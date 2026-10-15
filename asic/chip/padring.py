#!/usr/bin/env python3
"""The whole chip: pad ring of sky130 IO cells around the five slice macros (runs inside WSL).

    python3 /mnt/d/stereo-depth-cam/asic/chip/padring.py [netlist] [pnr] [gds] [drc]

  netlist  ~/ic/chip/top/stereo_slice_chip.v: 32 pads (26 gpiov2 + 6 supply), the slice that
           ties VCCHIB / VSWITCH, the glue of the slice (mini_slice.v: wires between the five
           macros, the reset synchroniser) and one tie cell per signal pad; every ring bus
           with its source (the corners come from place_corners in pnr)
  pnr      OpenROAD: die and IO rows, corners, pads in the order of plan.json, filler cells
           closing the ring (its supply buses connect by abutment), the macros at their places,
           cell rows, tap cells, a power ring on met4/met5 fed from the VCCD/VSSD pads with
           straps over the core, placement, clock tree, routing
  gds      the layout merged with the GDS of the standard cells, IO cells and macros (KLayout)
  drc      KLayout DRC (sky130 rule deck of the PDK) on the merged GDS

Pad settings: inputs DM = 001, outputs DM = 110 (strong push-pull), OE_N and the 1.8 V
controls from tie cells, the 3.3 V controls (ENABLE_H, HLD_H_N ...) from each pad's own
TIE_HI_ESD / TIE_LO_ESD. Output in asic/chip/out/.
"""
import glob
import json
import re
import os
import shutil
import subprocess
import sys

WIN = "/mnt/d/stereo-depth-cam"
WORK = os.path.expanduser("~/ic/chip")
TOP = WORK + "/top"
OUT = WIN + "/asic/chip/out"
PDK = glob.glob(os.path.expanduser("~/.volare/volare/sky130/versions/*/sky130A"))[0]
OPENROAD = sorted(glob.glob("/nix/store/*-openroad/bin/openroad"))[0]
KLAYOUT = sorted(glob.glob("/nix/store/*klayout*/bin/klayout"))[0]
BLOCKS = ("ctrl", "cost", "path", "pick", "up")
BUS = ["AMUXBUS_A", "AMUXBUS_B", "VSSA", "VDDA", "VSWITCH", "VDDIO_Q", "VCCHIB", "VDDIO", "VCCD", "VSSIO", "VSSD", "VSSIO_Q"]
SUPPLY_PIN = {"VCCD": "VCCD_PAD", "VCCD2": "VCCD_PAD", "VSSD": "VSSD_PAD", "VSSD2": "VSSD_PAD",
              "VDDIO": "VDDIO_PAD", "VSSIO": "VSSIO_PAD"}
CORE_NET = {"ui_in": "ui", "uio_in": "uio", "uo_out": "uo", "clk": "clk", "rst_n": "rst_n"}


def inst_name(pad):
    return "pad_" + pad.replace("[", "_").replace("]", "")


def netlist(plan):
    os.makedirs(TOP, exist_ok=True)
    pads = plan["pads"]
    ports, body = [], []
    # every ring bus has a source: VDDIO_Q and VSSIO_Q are tied to VDDIO and VSSIO inside the
    # VDDIO / VSSIO pads, VCCHIB and VSWITCH to VCCD and VDDIO by the connect slice, VDDA and
    # VSSA to VDDIO and VSSIO by the met3 jumpers (pnr); the analog mux buses stay unused
    bus_nets = {b: b.lower() for b in BUS}
    bus_nets.update(VDDIO_Q="vddio", VSSIO_Q="vssio", VCCHIB="vccd", VSWITCH="vddio", VDDA="vddio", VSSA="vssio")
    for p in pads:
        n = p["name"]
        inst = inst_name(n)
        bus = ", ".join(f".{b}({bus_nets[b]})" for b in BUS)
        if n in SUPPLY_PIN:
            # a supply pad's bond pad is the ring bus of the same name: VCCD and VCCD2 are one net
            net = n.rstrip("2").lower()
            if net not in ports:
                ports.append(net)
            body.append(f"    {p['cell']} {inst} (.{SUPPLY_PIN[n]}({net}), {bus});")
            continue
        port = n.replace("[", "_").replace("]", "") if "[" in n else n + "_pad"
        ports.append(port)
        group = n.split("[")[0]
        core = CORE_NET[group] + (n[len(group):] if "[" in n else "")
        out = group == "uo_out"
        t = inst
        body.append(f"    wire {t}_hi, {t}_lo, {t}_hv_hi, {t}_hv_lo;")
        body.append(f"    sky130_fd_sc_hd__conb_1 {t}_tie (.HI({t}_hi), .LO({t}_lo));")
        sig = (f".OUT({core}), .OE_N({t}_lo), .DM({{{t}_hi, {t}_hi, {t}_lo}}), .INP_DIS({t}_hi), .IN()"
               if out else
               f".OUT({t}_lo), .OE_N({t}_hi), .DM({{{t}_lo, {t}_lo, {t}_hi}}), .INP_DIS({t}_lo), .IN({core})")
        body.append(f"    sky130_ef_io__gpiov2_pad {inst} (.PAD({port}), {sig},\n"
                    f"        .IB_MODE_SEL({t}_lo), .VTRIP_SEL({t}_lo), .SLOW({t}_lo), .HLD_OVR({t}_lo),\n"
                    f"        .ANALOG_EN({t}_lo), .ANALOG_SEL({t}_lo), .ANALOG_POL({t}_lo), .ENABLE_VDDIO({t}_hi),\n"
                    f"        .HLD_H_N({t}_hv_hi), .ENABLE_H({t}_hv_hi), .ENABLE_INP_H({t}_hv_lo), .ENABLE_VDDA_H({t}_hv_lo),\n"
                    f"        .ENABLE_VSWITCH_H({t}_hv_lo), .TIE_HI_ESD({t}_hv_hi), .TIE_LO_ESD({t}_hv_lo),\n"
                    f"        .IN_H(), .PAD_A_ESD_0_H(), .PAD_A_ESD_1_H(), .PAD_A_NOESD_H(), {bus});")
    # no corner cells here: place_corners (pnr) makes the four, joined to the ring by abutment
    for r in plan["ring"]:
        if r["kind"] == "slice":
            body.append(f"    {r['cell']} {r['name']} (" + ", ".join(f".{b}({bus_nets[b]})" for b in BUS) + ");")
    # the slice: the glue of mini_slice.v around the five macros, and the reset synchroniser
    glue = open(f"{WIN}/rtl/mini/mini_slice.v").read()
    glue = glue[glue.index("    wire        run"):glue.index("endmodule")]
    for b in BLOCKS:
        glue = glue.replace(f"ms_{b} #(.NBITS(NBITS))", f"slice_{b}").replace(f"ms_{b} ", f"slice_{b} ")
    glue = glue.replace("NBITS", "44")
    for b in BLOCKS:   # the macros' supply pins
        glue = glue.replace(f"slice_{b} u_{b} (\n        .clk", f"slice_{b} u_{b} (\n        .VPWR(vccd), .VGND(vssd), .clk")
    v = ["// The stand-alone slice chip (asic/chip/padring.py): pad ring, five macros, glue.",
         "module stereo_slice_chip (", "    inout wire " + ",\n    inout wire ".join(ports), ");",
         "    wire " + ", ".join(sorted({b for b in bus_nets.values() if b not in ports})) + ";",
         "    wire clk, rst_n;", "    wire [7:0] ui, uio, uo;"]
    text = "\n".join(v + body) + "\n"
    text += """    reg [1:0] rs;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) rs <= 2'b00;
        else        rs <= {rs[0], 1'b1};
    end
    wire rst = !rs[1];
""" + glue + "endmodule\n"
    open(f"{TOP}/stereo_slice_chip.v", "w").write(text)
    print("netlist:", f"{TOP}/stereo_slice_chip.v", len(pads), "pads")


# ------------------------------------------------------------------ files
# the PDK's .magicrc finds its technology file through PDK_ROOT
MAGIC_ENV = dict(os.environ, PDK_ROOT=os.path.dirname(PDK))
SC = f"{PDK}/libs.ref/sky130_fd_sc_hd"
IO = f"{PDK}/libs.ref/sky130_fd_io"
TLEF = f"{SC}/techlef/sky130_fd_sc_hd__nom.tlef"
SC_LEF = f"{SC}/lef/sky130_fd_sc_hd.lef"
IO_LEF = f"{IO}/lef/sky130_ef_io.lef"
SC_LIB = f"{SC}/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"


EDGE_LEF = f"{TOP}/sky130_ef_io_edge.lef"


def edge_lef():
    """The IO LEF with an edge abstract of the gpio pad: each signal pin keeps only the part
    that reaches past the pad's core side (y < 0), and the pad body is an obstruction on
    li1-met4, so the router connects at the edge and never enters the pad. The metal is the
    same as in the GDS (the stub is part of each pin)."""
    out, cell, pin, keep = [], None, None, []
    bus = {"AMUXBUS_A", "AMUXBUS_B", "VCCD", "VCCHIB", "VDDA", "VDDIO", "VDDIO_Q", "VSSA", "VSSD",
           "VSSIO", "VSSIO_Q", "VSWITCH", "PAD"}
    layer = None
    for line in open(IO_LEF):
        w = line.split()
        if w and w[0] == "MACRO":
            cell = w[1]
        if cell != "sky130_ef_io__gpiov2_pad":
            out.append(line)
            continue
        if w and w[0] == "PIN":
            pin = w[1]
        elif w and w[0] == "END" and len(w) > 1 and w[1] == pin:
            pin = None
        elif w and w[0] == "OBS" and pin is None:
            # the body, below the stubs' end at y = 0
            out.append(line)
            for l in ("li1", "met1", "met2", "met3", "met4"):
                out.append(f"      LAYER {l} ;\n        RECT 0.000 0.000 80.000 197.965 ;\n")
            continue
        if pin and pin not in bus and w:
            if w[0] == "LAYER":
                layer = w[1]
            if w[0] == "RECT":
                x1, y1, x2, y2 = map(float, w[1:5])
                if y1 >= 0:
                    continue                      # the part inside the pad
                line = line.replace(w[4], "0.000", 1) if y2 > 0 else line
                line = f"        RECT {x1:.3f} {y1:.3f} {x2:.3f} {min(y2, 0.0):.3f} ;\n"
        out.append(line)
    open(EDGE_LEF, "w").write("".join(out))
    return EDGE_LEF


def macro(b, kind):
    return f"{WORK}/runs/slice_{b}/final/{kind}/slice_{b}.{kind}"


def lef_pins(path, cells):
    """{cell: [(pin, direction), ...]} from a LEF file, for the yosys stubs."""
    out, cur = {}, None
    pin = None
    for line in open(path):
        w = line.split()
        if not w:
            continue
        if w[0] == "MACRO":
            cur = w[1] if w[1] in cells else None
            if cur:
                out[cur] = []
        elif cur and w[0] == "PIN":
            pin = w[1]
        elif cur and pin and w[0] == "DIRECTION":
            out[cur].append((pin, w[1]))
            pin = None
        elif cur and w[0] == "END" and len(w) > 1 and w[1] == cur:
            cur = None
    return out


def stubs():
    """Black-box modules for the pads and the macros, so that yosys keeps them as they are."""
    io_cells = ["sky130_ef_io__gpiov2_pad", "sky130_ef_io__corner_pad", "sky130_ef_io__vccd_lvc_clamped_pad",
                "sky130_ef_io__vssd_lvc_clamped_pad", "sky130_ef_io__vddio_hvc_clamped_pad", "sky130_ef_io__vssio_hvc_clamped_pad",
                "sky130_ef_io__connect_vcchib_vccd_and_vswitch_vddio_slice_20um"]
    cells = lef_pins(IO_LEF, io_cells)
    for b in BLOCKS:
        cells.update(lef_pins(macro(b, "lef"), [f"slice_{b}"]))
    text = []
    for cell, pins in cells.items():
        buses = {}
        for name, d in pins:
            base = name.split("[")[0]
            idx = int(name.split("[")[1][:-1]) if "[" in name else None
            buses.setdefault(base, [d, []])[1].append(idx)
        decl = []
        for base, (d, idx) in buses.items():
            kind = {"INPUT": "input", "OUTPUT": "output"}.get(d, "inout")
            rng = f" [{max(idx)}:{min(idx)}]" if idx[0] is not None else ""
            decl.append(f"    {kind}{rng} {base}")
        text.append(f"(* blackbox *)\nmodule {cell} (\n" + ",\n".join(decl) + "\n);\nendmodule\n")
    open(f"{TOP}/stubs.v", "w").write("\n".join(text))


def synth():
    """The glue and the reset synchroniser to standard cells; pads and macros stay black boxes."""
    stubs()
    yosys = sorted(glob.glob("/nix/store/*-yosys/bin/yosys"))[0]
    script = f"""
read_liberty -lib {SC_LIB}
read_verilog -lib {TOP}/stubs.v
read_verilog {TOP}/stereo_slice_chip.v
hierarchy -top stereo_slice_chip
synth -top stereo_slice_chip -flatten
dfflibmap -liberty {SC_LIB}
abc -liberty {SC_LIB}
setundef -zero
hilomap -singleton -hicell sky130_fd_sc_hd__conb_1 HI -locell sky130_fd_sc_hd__conb_1 LO
opt_clean -purge
write_verilog -noattr -noexpr -nohex -nodec {TOP}/stereo_slice_chip.nl.v
stat
"""
    open(f"{TOP}/synth.ys", "w").write(script)
    r = subprocess.run([yosys, "-q", "-l", f"{TOP}/synth.log", "-s", f"{TOP}/synth.ys"], capture_output=True, text=True)
    print("synth:", "ok" if r.returncode == 0 else r.stdout[-1500:] + r.stderr[-1500:])
    return r.returncode == 0


CORNERS = {"tt": "tt_025C_1v80", "ss": "ss_100C_1v60", "ff": "ff_n40C_1v95"}


def liberty_tcl():
    """Standard cells and the five macros (their post-route timing models), one set per corner."""
    lines = [f"define_corners {' '.join(CORNERS)}"]
    for c, name in CORNERS.items():
        lines.append(f"read_liberty -corner {c} {SC}/lib/sky130_fd_sc_hd__{name}.lib")
        lines += [f"read_liberty -corner {c} {WORK}/runs/slice_{b}/final/lib/nom_{name}/slice_{b}__nom_{name}.lib"
                  for b in BLOCKS]
    return "\n".join(lines)


def pnr(plan):
    """Pad ring, macros, power, placement, clock tree, routing: one OpenROAD script."""
    die = plan["die"]
    cx, cy = plan["core_origin"]
    # die edge to the core area: seal, pads, then 40 µm: the VCCD/VSSD clamp pads carry met1
    # 10.5 µm past their core side, and the core ring (4 + 10 + 3 + 10 µm outside the core)
    # must stay clear of that and of the pads' own met4/met5 supply buses
    inner = 20 + 197.965 + 40
    rows = {"W": "IO_WEST", "E": "IO_EAST", "S": "IO_SOUTH", "N": "IO_NORTH"}
    place = []
    for p in plan["pads"]:
        # place_pad wants the pad's position along the row: its lower left end, die coordinates
        if p["side"] in ("W", "E"):
            pos = p["y"] - p["width"] / 2
        else:
            pos = p["x"] - p["width"] / 2
        place.append(f"place_pad -row {rows[p['side']]} -location {pos:.3f} {inst_name(p['name'])}")
    lefs = [TLEF, SC_LEF, edge_lef()] + [macro(b, "lef") for b in BLOCKS]
    macros = "\n".join(f"place_macro -macro_name u_{b} -location {{{cx + x:.3f} {cy + y:.3f}}} -orientation R0"
                       for b, (x, y, w, h) in plan["macros"].items())
    jumper = next(r for r in plan["ring"] if r["kind"] == "jumper")
    pad_conn = " ".join(f"{inst_name(p['name'])} {p['name'].rstrip('2').lower()}" for p in plan["pads"]
                        if p["name"] in ("VCCD", "VCCD2", "VSSD", "VSSD2"))
    power_pads = " ".join(inst_name(p["name"]) for p in plan["pads"] if p["name"] in ("VCCD", "VCCD2"))
    ground_pads = " ".join(inst_name(p["name"]) for p in plan["pads"] if p["name"] in ("VSSD", "VSSD2"))
    tcl = f"""
foreach lef {{{" ".join(lefs)}}} {{ read_lef $lef }}
{liberty_tcl()}
read_verilog {TOP}/stereo_slice_chip.nl.v
link_design stereo_slice_chip

# ---- die, IO rows, pads, corners, ring fillers
initialize_floorplan -die_area "0 0 {die} {die}" -core_area "{inner} {inner} {die - inner} {die - inner}" -site unithd
make_tracks
make_fake_io_site -name IO_HSITE -width 1 -height 197.965
make_fake_io_site -name IO_VSITE -width 1 -height 197.965
make_fake_io_site -name IO_CSITE -width 200 -height 204
# the pad's core side is its y = 0 edge: R180 turns it inwards on the south row (north: MY),
# R90 on the west row (east: MXR90); -rotation_horizontal sets the west and east rows
make_io_sites -horizontal_site IO_HSITE -vertical_site IO_VSITE -corner_site IO_CSITE -offset 20 \\
    -rotation_horizontal R90 -rotation_vertical R180 -rotation_corner R180
place_corners sky130_ef_io__corner_pad
{chr(10).join(place)}
{chr(10).join(f"place_pad -row IO_SOUTH -location {r['x']:.3f} {r['name']}" for r in plan["ring"] if r["kind"] == "slice")}
foreach row {{IO_NORTH IO_SOUTH IO_EAST IO_WEST}} {{
    place_io_fill -row $row sky130_ef_io__com_bus_slice_20um sky130_ef_io__com_bus_slice_10um \\
        sky130_ef_io__com_bus_slice_5um sky130_ef_io__com_bus_slice_1um
}}
connect_by_abutment
remove_io_rows
# every chip port is the bond pad it is wired to: a pin on the pad's PAD shape, and its net
# special, so that the router leaves it alone (the bond wire is the connection)
set block [ord::get_db_block]
foreach bt [$block getBTerms] {{
    set net [$bt getNet]
    foreach it [$net getITerms] {{
        set mt [$it getMTerm]
        if {{![string match *PAD [$mt getName]]}} {{ continue }}
        set layer [[lindex [[lindex [$mt getMPins] 0] getGeometry] 0] getTechLayer]
        set b [$it getBBox]
        set bp [odb::dbBPin_create $bt]
        odb::dbBox_create $bp $layer [$b xMin] [$b yMin] [$b xMax] [$b yMax]
        $bp setPlacementStatus FIRM
    }}
    $net setSpecial
}}

# ---- the slice: macros at their places, rows around them, tap cells
{macros}
# no rows in the 8-16 µm channels between the macros: no strap reaches them, and the few
# glue cells (reset synchroniser, ties) have room around the block
cut_rows -halo_width_x 10 -halo_width_y 10
tapcell -distance 13 -tapcell_master sky130_fd_sc_hd__tapvpwrvgnd_1

# ---- power: a ring fed by the VCCD / VSSD pads, straps over the core, rails, macros
add_global_connection -net vccd -pin_pattern {{^VPWR$}} -power
add_global_connection -net vssd -pin_pattern {{^VGND$}} -ground
add_global_connection -net vccd -pin_pattern {{^VPB$}}
add_global_connection -net vssd -pin_pattern {{^VNB$}}
global_connect
set_voltage_domain -power vccd -ground vssd
define_pdn_grid -name core -voltage_domains CORE
# no -connect_to_pads: it reaches the VCCD bus through the fillers between the gpio pads, close
# to their metal; the supply pads are joined below
add_pdn_ring -grid core -layers {{met4 met5}} -widths {{10 10}} -spacings {{3 3}} -core_offsets {{4 4}}
add_pdn_stripe -grid core -layer met1 -width 0.48 -followpins
add_pdn_stripe -grid core -layer met4 -width 1.6 -pitch 60 -offset 20 -extend_to_core_ring
add_pdn_stripe -grid core -layer met5 -width 1.6 -pitch 60 -offset 20 -extend_to_core_ring
add_pdn_connect -grid core -layers {{met1 met4}}
add_pdn_connect -grid core -layers {{met4 met5}}
define_pdn_grid -macro -default -name macro -halo {{4 4}}
add_pdn_connect -grid macro -layers {{met4 met5}}
pdngen
# the supply pads to the ring:
# from each 1.8 V pad's met3 pins on its core side, a met3 strap inwards to its own ring
# (VCCD outer, VSSD inner), and stacked via3/via4 on a 2 µm grid where the strap meets that
# ring's met5 side, away from the pad and from the met4 straps crossing the ring
set block [ord::get_db_block]
set tech [ord::get_db_tech]
set m3 [$tech findLayer met3]
set v34 [$tech findVia M3M4_PR]
set v45 [$tech findVia M4M5_PR]
foreach {{pad net}} {{{pad_conn}}} {{
    set inst [$block findInst $pad]
    set n [$block findNet $net]
    if {{[$inst getOrient] ne "R180"}} {{ error "supply pad $pad is not on the south row" }}
    set ib [$inst getBBox]
    # this net's ring side along the south edge (met5) and every met4 shape crossing the band
    set ring {{}}
    set m4 {{}}
    foreach nn {{vccd vssd}} {{
        foreach sw [[$block findNet $nn] getSWires] {{
            foreach w [$sw getWires] {{
                if {{[$w isVia]}} {{ continue }}
                set l [[$w getTechLayer] getName]
                if {{$l eq "met5" && $nn eq $net && [$w yMax] < 270000 && [$w getDX] > [$w getDY]}} {{
                    set ring [list [$w yMin] [$w yMax] [$w xMin] [$w xMax]]
                }}
                if {{$l eq "met4" && [$w yMin] < 270000}} {{ lappend m4 [list [$w xMin] [$w xMax]] }}
            }}
        }}
    }}
    if {{$ring eq {{}}}} {{ error "no south ring side for $net" }}
    lassign $ring ry1 ry2 rx1 rx2
    set sw [odb::dbSWire_create $n ROUTED]
    foreach mp [[[$inst findITerm [string toupper $net]] getMTerm] getMPins] {{
        foreach g [$mp getGeometry] {{
            if {{[$g getTechLayer] ne $m3 || [$g yMin] >= 0}} {{ continue }}
            # R180: x -> right edge - x, y -> top edge - y; the pin's core-side edge is at the top
            set x1 [expr [$ib xMax] - [$g xMax]]
            set x2 [expr [$ib xMax] - [$g xMin]]
            # edges on a 10 nm grid: the strap is written as a centred path, so its width must
            # be even and its centre on the 5 nm manufacturing grid
            set x1 [expr (($x1 + 9) / 10) * 10]
            set x2 [expr ($x2 / 10) * 10]
            set y1 [expr [$ib yMax] - 1000]
            odb::dbSBox_create $sw $m3 $x1 $y1 $x2 $ry2 STRIPE
            for {{set x [expr max($x1, $rx1) + 1500]}} {{$x <= min($x2, $rx2) - 1500}} {{incr x 2000}} {{
                set clear 1
                foreach s $m4 {{ if {{$x > [lindex $s 0] - 2000 && $x < [lindex $s 1] + 2000}} {{ set clear 0 }} }}
                if {{!$clear}} {{ continue }}
                for {{set y [expr $ry1 + 1500]}} {{$y <= $ry2 - 1500}} {{incr y 2000}} {{
                    odb::dbSBox_create $sw $v34 $x $y STRIPE
                    odb::dbSBox_create $sw $v45 $x $y STRIPE
                }}
            }}
        }}
    }}
}}
foreach {{pad net}} {{{pad_conn}}} {{
    set k 0
    foreach sw [[$block findNet $net] getSWires] {{ foreach w [$sw getWires] {{ if {{[$w yMax] < [[[$block findInst $pad] getBBox] yMax] + 40000 && [$w isVia]}} {{ incr k }} }} }}
    puts "PAD_CONNECTION $pad $net vias_near_pad=$k"
}}
# VDDA to VDDIO and VSSA to VSSIO: met3 under the ring buses of the south row, via3 only on the
# two stripes it joins (as the PDK's connect slice does for VSWITCH); bus stripes in cell y
# from the pad's core side: VDDA 12.9-16.35, VDDIO 17.75-22.4, VSSIO 23.8-28.45, VSSA 34.7-38.15
set dbu [[ord::get_db_tech] getDbUnitsPerMicron]
foreach {{net a1 a2 b1 b2}} {{vddio 12.9 16.35 17.75 22.4  vssio 23.8 28.45 34.7 38.15}} {{
    set sw [odb::dbSWire_create [$block findNet $net] ROUTED]
    set top [expr round((20 + 197.965) * $dbu)]
    set x1 [expr round({jumper['x']:.3f} * $dbu)]
    set x2 [expr $x1 + round({jumper['width']:.3f} * $dbu)]
    odb::dbSBox_create $sw $m3 $x1 [expr $top - round(($b2 - 0.2) * $dbu)] $x2 [expr $top - round(($a1 + 0.2) * $dbu)] STRIPE
    foreach {{s1 s2}} [list $a1 $a2 $b1 $b2] {{
        for {{set y [expr $top - round(($s2 - 0.45) * $dbu)]}} {{$y <= $top - round(($s1 + 0.45) * $dbu)}} {{incr y 800}} {{
            for {{set x [expr $x1 + 500]}} {{$x <= $x2 - 500}} {{incr x 800}} {{
                odb::dbSBox_create $sw $v34 $x $y STRIPE
            }}
        }}
    }}
    puts "SUPPLY_JUMPER $net"
}}
# the router stays out of the pad ring: every signal pin of the pads reaches 2 µm past the
# pad's core side, and the pads' own layout is not fully described by obstructions in the LEF
set tech [ord::get_db_tech]
set dbu [$tech getDbUnitsPerMicron]
set d [expr int({die} * $dbu)]
foreach l {{li1 met1 met2 met3 met4 met5}} {{
    # li1-met2 also over the 2 µm stubs, so that no wire runs along the pad's edge there:
    # those pins are reached at the stub's end or by a via from met3
    set r [expr {{round((20 + 197.965 + ([lsearch {{li1 met1 met2}} $l] >= 0 ? 2.035 : 0)) * $dbu)}}]
    set layer [$tech findLayer $l]
    foreach box [list "0 0 $d $r" "0 [expr $d - $r] $d $d" "0 0 $r $d" "[expr $d - $r] 0 $d $d"] {{
        odb::dbObstruction_create $block $layer {{*}}$box
    }}
}}
# and li1/met1 over the met1 that each 1.8 V clamp pad carries 10.5 µm past its core side and
# 10.9 µm past its left edge (lvc_vccdx_overlay, x 16.655 to 85.935 in the cell)
foreach {{pad net}} {{{pad_conn}}} {{
    set ib [[$block findInst $pad] getBBox]
    foreach l {{li1 met1}} {{
        odb::dbObstruction_create $block [$tech findLayer $l] [expr [$ib xMax] - 86500] [$ib yMax]             [expr [$ib xMax] - 16100] [expr [$ib yMax] + 11000]
    }}
}}

# ---- the few standard cells: placement, clock tree, routing
set_wire_rc -signal -layer met2
set_wire_rc -clock -layer met5
read_sdc {TOP}/chip.sdc
global_placement -skip_io -density 0.4
detailed_placement
clock_tree_synthesis -root_buf sky130_fd_sc_hd__clkbuf_16 -buf_list {{sky130_fd_sc_hd__clkbuf_4 sky130_fd_sc_hd__clkbuf_8}}
# hold between macros: a macro's output may change before the clock inside the next one
# arrives; delay buffers on the glue nets, checked at every corner
estimate_parasitics -placement
repair_timing -hold -hold_margin 0.1
detailed_placement
# filler and decap cells close every gap in the rows, before routing so the router sees them (n-well and implant continuity)
filler_placement {{sky130_fd_sc_hd__decap_12 sky130_fd_sc_hd__decap_8 sky130_fd_sc_hd__decap_6 sky130_fd_sc_hd__decap_4 sky130_fd_sc_hd__decap_3 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_1}}
set_routing_layers -signal met1-met5
global_route -allow_congestion
detailed_route -output_drc {TOP}/drt.rpt -verbose 1
check_placement
# the cells added since the power grid (clock tree, hold buffers, fillers) onto VPWR / VGND too
global_connect
write_def {TOP}/stereo_slice_chip.def
write_db {TOP}/stereo_slice_chip.odb
write_verilog {TOP}/stereo_slice_chip.pnl.v
report_wns
report_tns
puts "PNR_DONE"
"""
    open(f"{TOP}/chip.sdc", "w").write("create_clock -name clk -period 40 [get_pins pad_clk/IN]\n"
                                         "set_propagated_clock [all_clocks]\n")
    open(f"{TOP}/pnr.tcl", "w").write(tcl)
    # the log is written as it runs (tail -f pnr.log to follow a long routing)
    with open(f"{TOP}/pnr.log", "w") as log:
        subprocess.run([OPENROAD, "-no_splash", "-threads", str(os.cpu_count()), "-exit", f"{TOP}/pnr.tcl"],
                       stdout=log, stderr=subprocess.STDOUT, cwd=TOP)
    text = open(f"{TOP}/pnr.log").read()
    tail = text[-2500:]
    print("pnr:", "ok" if "PNR_DONE" in text else "FAILED")
    print(tail)
    return "PNR_DONE" in text


SUPPLY_PORTS = ("vccd", "vssd", "vddio", "vssio")


def lvs_def():
    """The routed DEF without the supply ports: in the layout a supply port is the bond pad of a
    supply pad, joined to the ring's supply bus only inside the pad (a black box here)."""
    src = open(f"{TOP}/stereo_slice_chip.def").read()
    head, rest = src.split("\nPINS ", 1)
    count, rest = rest.split(" ;", 1)
    body, tail = rest.split("\nEND PINS", 1)
    pins = re.split(r"\n(?=    - )", body.strip("\n"))
    keep = [p for p in pins if p.split()[1] not in SUPPLY_PORTS]
    out = f"{TOP}/lvs/stereo_slice_chip_lvs.def"
    open(out, "w").write(f"{head}\nPINS {len(keep)} ;\n" + "\n".join(keep) + "\nEND PINS" + tail)
    return out


def lvs_reference(path):
    """The netlist as the abstracts show it: what a PDK cell joins inside (a supply pad's bond pad
    to its bus, VDDIO_Q to VDDIO, VSSIO_Q to VSSIO) is not seen in the extracted layout, so those
    stay apart here and the supply ports go; all the rest (signals, the core ring, the connect
    slice, the VDDA / VSSA jumpers) is compared as it is."""
    v = open(path).read()
    for port in SUPPLY_PORTS:
        v = re.sub(rf"(\(|,)\s*{port},", r"\1", v, count=1)                    # module port list
        v = re.sub(rf"\b(inout|input|output) {port};", f"wire {port};", v)
    v = re.sub(r"\(\s*,", "(", v)
    v = re.sub(r",\s*\);", ");", v, count=1)
    v = v.replace(".VDDIO_Q(vddio)", ".VDDIO_Q(vddio_q)").replace(".VSSIO_Q(vssio)", ".VSSIO_Q(vssio_q)")
    bonds = []
    for inst in ("pad_VCCD", "pad_VCCD2", "pad_VSSD", "pad_VSSD2", "pad_VDDIO", "pad_VSSIO"):
        v = re.sub(rf"({inst} \(.*?)\.(V\w+)_PAD\((\w+)\)",
                   lambda m: m.group(1) + f".{m.group(2)}_PAD(bond_{inst})", v, count=1, flags=re.S)
        bonds.append(f"bond_{inst}")
    decl = "\n wire " + ", ".join(bonds + ["vddio_q", "vssio_q"]) + ";"
    v = re.sub(r"(module stereo_slice_chip \([^;]*;)", lambda m: m.group(1) + decl, v, count=1, flags=re.S)
    open(path, "w").write(v)


def lvs():
    """Chip LVS, hierarchical: Magic extracts the routed top from the DEF with every cell as its
    LEF abstract (macros, IO cells, standard cells), netgen compares it with the netlist that
    OpenROAD wrote, the cells as black boxes matched by name and pins. This checks every
    connection made at the top (pads, glue, macros, power, the supply slice and jumpers); the
    inside of the macros has its own LVS (OpenLane), the IO and standard cells are the PDK's."""
    magic = sorted(glob.glob("/nix/store/*-magic-vlsi-*/bin/magic") or glob.glob("/nix/store/*magic*/bin/magic"))[0]
    netgen = sorted(glob.glob("/nix/store/*netgen*/bin/netgen"))[0]
    ext = f"{TOP}/lvs"
    os.makedirs(ext, exist_ok=True)
    lefs = [TLEF, f"{SC}/lef/sky130_ef_sc_hd.lef", SC_LEF, IO_LEF] + [macro(b, "lef") for b in BLOCKS]
    tcl = "\n".join([f"lef read {l}" for l in lefs] + [
        # without the routing blockages (as OpenLane reads a DEF for extraction)
        f"def read {lvs_def()} -noblockage",
        # the macros and the IO cells as their abstracts (their inside is checked on its own);
        # the standard cells from their real layout, as OpenLane extracts them
        "foreach cell [cellname list allcells] { if {[string match slice_* $cell] || [string match sky130_ef_io* $cell] || [string match sky130_fd_io* $cell]} { load $cell; property LEFview true } }",
        "load stereo_slice_chip -dereference",
        f"cd {ext}",
        "extract do local", "extract no capacitance", "extract no coupling", "extract no resistance",
        "extract no adjust", "extract unique", "extract", f"feedback save {ext}/feedback.txt", "ext2spice lvs",
        f"ext2spice -o {ext}/stereo_slice_chip.spice stereo_slice_chip.ext",
        "puts EXTRACT_DONE", "quit -noprompt"])
    open(f"{ext}/extract.tcl", "w").write(tcl + "\n")
    rc = f"{PDK}/libs.tech/magic/sky130A.magicrc"
    r = subprocess.run([magic, "-dnull", "-noconsole", "-rcfile", rc, f"{ext}/extract.tcl"],
                       capture_output=True, text=True, cwd=ext, env=MAGIC_ENV)
    open(f"{ext}/extract.log", "w").write(r.stdout + r.stderr)
    if "EXTRACT_DONE" not in r.stdout:
        print("lvs: extraction FAILED\n" + (r.stdout + r.stderr)[-2000:])
        return False
    # the reference: OpenROAD's netlist of the routed top with power pins, the cells as stubs
    with open(f"{ext}/ref.tcl", "w") as f:
        f.write(f"read_db {TOP}/stereo_slice_chip.odb\nadd_global_connection -net vccd -pin_pattern {{^VPWR$}} -power\nadd_global_connection -net vssd -pin_pattern {{^VGND$}} -ground\nadd_global_connection -net vccd -pin_pattern {{^VPB$}}\nadd_global_connection -net vssd -pin_pattern {{^VNB$}}\nglobal_connect\nwrite_verilog -include_pwr_gnd {ext}/stereo_slice_chip.v\n")
    subprocess.run([OPENROAD, "-no_splash", "-exit", f"{ext}/ref.tcl"], capture_output=True, text=True, cwd=ext)
    lvs_reference(f"{ext}/stereo_slice_chip.v")
    script = f"""set c1 [readnet spice {ext}/stereo_slice_chip.spice]
set c2 [readnet spice {SC}/spice/sky130_fd_sc_hd.spice]
readnet verilog {TOP}/stubs.v $c2
readnet verilog {ext}/stereo_slice_chip.v $c2
lvs "$c1 stereo_slice_chip" "$c2 stereo_slice_chip" {PDK}/libs.tech/netgen/sky130A_setup.tcl {ext}/lvs.rpt -blackbox
"""
    open(f"{ext}/lvs.tcl", "w").write(script)
    r = subprocess.run([netgen, "-batch", "source", f"{ext}/lvs.tcl"], capture_output=True, text=True, cwd=ext)
    open(f"{ext}/netgen.log", "w").write(r.stdout + r.stderr)
    rpt = open(f"{ext}/lvs.rpt").read() if os.path.exists(f"{ext}/lvs.rpt") else ""
    final = [l for l in rpt.splitlines() if l.startswith("Final result")]
    print("lvs:", final[-1] if final else "no result\n" + (r.stdout + r.stderr)[-2000:])
    open(OUT + "/lvs.txt", "w").write((final[-1] if final else "no result") + "\n")
    return bool(final) and "match uniquely" in final[-1]


MDRC_TCL = """
gds read {gds}
load stereo_slice_chip
select top cell
drc euclidean on
drc style drc(full)
drc check
drc catchup
set out [open {out} w]
foreach {{why boxes}} [drc listall why] {{
    foreach b $boxes {{ puts $out "[join $b {{ }}]\\t$why" }}
}}
close $out
puts "MDRC_DONE [drc list count total]"
quit -noprompt
"""


def mdrc():
    """Magic DRC (the sign-off deck, drc(full)) on the merged chip GDS, every error with its box,
    counted per rule and place (core, pad ring) as the KLayout DRC."""
    magic = sorted(glob.glob("/nix/store/*-magic-vlsi-*/bin/magic") or glob.glob("/nix/store/*magic*/bin/magic"))[0]
    d = f"{TOP}/mdrc"
    os.makedirs(d, exist_ok=True)
    open(f"{d}/drc.tcl", "w").write(MDRC_TCL.format(gds=f"{TOP}/stereo_slice_chip.gds", out=f"{d}/errors.txt"))
    r = subprocess.run([magic, "-dnull", "-noconsole", "-rcfile", f"{PDK}/libs.tech/magic/sky130A.magicrc",
                        f"{d}/drc.tcl"], capture_output=True, text=True, cwd=d, env=MAGIC_ENV)
    open(f"{d}/drc.log", "w").write(r.stdout + r.stderr)
    if "MDRC_DONE" not in r.stdout:
        print("mdrc: FAILED\n" + (r.stdout + r.stderr)[-2000:])
        return False
    die = json.load(open(OUT + "/plan.json"))["die"]
    ring = 20 + 197.965
    count = {}
    for line in open(f"{d}/errors.txt"):
        box, why = line.rstrip("\n").split("\t", 1)
        # Magic lists boxes in internal units: lambda of 0.005 um (sky130A.magicrc, scale 1 / 2)
        x1, y1, x2, y2 = (float(v) * 0.005 for v in box.split())
        inside = x1 > ring and x2 < die - ring and y1 > ring and y2 < die - ring
        k = count.setdefault(why, [0, 0])
        k[0 if inside else 1] += 1
    lines = ["| rule (Magic) | core | pad ring |", "|---|---|---|"]
    lines += [f"| {w} | {a} | {b} |" for w, (a, b) in sorted(count.items())]
    lines.append(f"| **total** | **{sum(a for a, b in count.values())}** | **{sum(b for a, b in count.values())}** |")
    open(OUT + "/mdrc.md", "w").write("\n".join(lines) + "\n")
    print("mdrc:\n" + "\n".join(lines))
    return True


RCX_RULES = {"tt": "nom", "ss": "max", "ff": "min"}


def rcx():
    """Parasitics of the routed top, one SPEF per corner (OpenRCX, the PDK's rule files)."""
    rules = f"{PDK}/libs.tech/openlane/rules.openrcx.sky130A"
    for c, r in RCX_RULES.items():
        tcl = f"""
read_db {TOP}/stereo_slice_chip.odb
define_process_corner -ext_model_index 0 X
extract_parasitics -ext_model_file {rules}.{r}.calibre -lef_res
write_spef {TOP}/chip_{c}.spef
puts RCX_DONE
"""
        open(f"{TOP}/rcx_{c}.tcl", "w").write(tcl)
        p = subprocess.run([OPENROAD, "-no_splash", "-exit", f"{TOP}/rcx_{c}.tcl"], capture_output=True, text=True, cwd=TOP)
        open(f"{TOP}/rcx_{c}.log", "w").write(p.stdout + p.stderr)
        if "RCX_DONE" not in p.stdout:
            print(f"rcx {c}: FAILED\n" + (p.stdout + p.stderr)[-1500:])
            return False
    print("rcx: ok")
    return True


def sta():
    """Timing of the whole chip at the typical, slow and fast corners: the routed top with
    extracted parasitics (rcx) and the macros' own timing models (their post-route .lib), so
    paths that run from one macro through another (ctrl -> cost -> pick) are timed end to end."""
    corners = CORNERS
    if not rcx():
        return False
    tcl = f"""
{liberty_tcl()}
read_db {TOP}/stereo_slice_chip.odb
read_sdc {TOP}/chip.sdc
{chr(10).join(f"read_spef -corner {c} {TOP}/chip_{c}.spef" for c in corners)}
set_propagated_clock [all_clocks]
foreach c {{{" ".join(corners)}}} {{
    set k [sta::find_corner $c]
    puts "CORNER $c setup [sta::format_time [sta::worst_slack_corner $k max] 3] ns, hold [sta::format_time [sta::worst_slack_corner $k min] 3] ns"
}}
report_checks -corner ss -path_delay max -format full -fields {{fanout}} -digits 3
report_checks -corner ff -path_delay min -digits 3
puts STA_DONE
"""
    open(f"{TOP}/sta.tcl", "w").write(tcl)
    r = subprocess.run([OPENROAD, "-no_splash", "-exit", f"{TOP}/sta.tcl"], capture_output=True, text=True, cwd=TOP)
    log = r.stdout + r.stderr
    open(f"{TOP}/sta.log", "w").write(log)
    lines = [l for l in log.splitlines() if l.startswith("CORNER") or "Startpoint" in l or "Endpoint" in l or "slack" in l]
    open(OUT + "/sta.txt", "w").write("\n".join(lines) + "\n")
    print("sta:", "ok" if "STA_DONE" in log else "FAILED\n" + log[-1500:])
    print("\n".join(lines))
    return "STA_DONE" in log


MERGE_PY = """
# KLayout (klayout -b -r merge.py -rd cfg=...): DEF + LEF to layout, cell views from the GDS files
import json
import re
import pya
c = json.load(open(cfg))
tech = pya.Technology()
tech.load(c["lyt"])
opt = tech.load_layout_options
opt.lefdef_config.read_lef_with_def = False
opt.lefdef_config.lef_files = c["lefs"]
opt.lefdef_config.map_file = c["map"]
ly = pya.Layout()
ly.read(c["def"], opt)
top = ly.cell(c["top"]).cell_index()
for cell in ly.each_cell():
    if cell.cell_index() != top and not cell.name.startswith("VIA"):
        cell.clear()
for g in c["gds"]:
    ly.read(g)
out = pya.Layout()
out.dbu = ly.dbu
out.create_cell(c["top"]).copy_tree(ly.cell(c["top"]))
empty = [cell.name for cell in out.each_cell() if cell.is_empty()]
print("empty cells:", empty)
# a cell left without its GDS stops the merge (the PDK's gendlring example is empty in the PDK)
missing = [n for n in empty if not n.startswith("sky130_fd_pr__gendlring__example")]
if missing:
    print("MISSING_GDS", missing)
else:
    out.write(c["out"])
    print("MERGE_DONE")
"""


def gds():
    """The routed DEF merged with the GDS of every cell it uses (as OpenLane's KLayout stream-out)."""
    tk = f"{PDK}/libs.tech/klayout/tech"
    cfg = dict(lyt=f"{tk}/sky130A.lyt", map=f"{tk}/sky130A.map", top="stereo_slice_chip",
               lefs=[TLEF, SC_LEF, IO_LEF] + [macro(b, "lef") for b in BLOCKS],
               gds=[f"{SC}/gds/sky130_fd_sc_hd.gds", f"{IO}/gds/sky130_fd_io.gds", f"{IO}/gds/sky130_ef_io.gds",
                    # the connect slice is in a file of its own
                    f"{IO}/gds/sky130_ef_io__connect_vcchib_vccd_and_vswitch_vddio_slice_20um.gds"]
                   + [macro(b, "gds") for b in BLOCKS],
               out=f"{TOP}/stereo_slice_chip.gds")
    cfg["def"] = f"{TOP}/stereo_slice_chip.def"
    json.dump(cfg, open(f"{TOP}/merge.json", "w"), indent=1)
    open(f"{TOP}/merge.py", "w").write(MERGE_PY)
    r = subprocess.run([KLAYOUT, "-b", "-r", f"{TOP}/merge.py", "-rd", f"cfg={TOP}/merge.json"],
                       capture_output=True, text=True)
    log = r.stdout + r.stderr
    open(f"{TOP}/merge.log", "w").write(log)
    ok = "MERGE_DONE" in log
    print("gds:", "ok" if ok else "FAILED", "\n" + log[-1500:])
    if ok:
        # compressed in the repository (about 50 MB plain): gunzip -k stereo_slice_chip.gds.gz
        import gzip
        with open(cfg["out"], "rb") as src, gzip.open(OUT + "/stereo_slice_chip.gds.gz", "wb", 9) as dst:
            shutil.copyfileobj(src, dst)
    return ok


def drc(run=True):
    """KLayout DRC of the PDK (sky130A_mr.drc, FEOL + BEOL) on the merged chip. Each marker is
    counted where KLayout reports it: inside a macro (its own coordinates), in the pad ring
    (the IO cells of the PDK) or at the top level (core: rails, glue, power, routing)."""
    deck = f"{PDK}/libs.tech/klayout/drc/sky130A_mr.drc"
    rpt = f"{TOP}/drc.lyrdb"
    if run:
        if os.path.exists(rpt):
            os.remove(rpt)
        r = subprocess.run([KLAYOUT, "-b", "-r", deck, "-rd", f"input={TOP}/stereo_slice_chip.gds",
                            "-rd", "topcell=stereo_slice_chip", "-rd", f"report={rpt}", "-rd", "feol=true",
                            "-rd", "beol=true", "-rd", "floating_met=false", "-rd", "offgrid=true",
                            "-rd", "seal=false", "-rd", "thr=6"], capture_output=True, text=True)
        open(f"{TOP}/drc.log", "w").write(r.stdout + r.stderr)
        if not os.path.exists(rpt):
            print("drc: FAILED\n" + (r.stdout + r.stderr)[-1500:])
            return False
    import re
    import xml.etree.ElementTree as ET
    die = json.load(open(OUT + "/plan.json"))["die"]
    ring = 20 + 197.965                       # the pad ring: die edge to the pads' core side
    where = ["core", "pad ring"] + [f"slice_{b}" for b in BLOCKS]
    count = {}
    for item in ET.parse(rpt).getroot().iter("item"):
        rule = item.findtext("category").strip("'")
        cell = (item.findtext("cell") or "").strip("'")
        if cell != "stereo_slice_chip":
            w = cell if cell in where else "pad ring"
        else:
            nums = [float(v) for v in re.findall(r"-?\d+\.?\d*", item.findtext("values/value") or "")]
            xs, ys = nums[0::2], nums[1::2]
            inside = bool(xs) and min(xs) > ring and max(xs) < die - ring and min(ys) > ring and max(ys) < die - ring
            w = "core" if inside else "pad ring"
        count.setdefault(rule, dict.fromkeys(where, 0))[w] += 1
    lines = ["| rule | " + " | ".join(where) + " |", "|---" * (len(where) + 1) + "|"]
    lines += [f"| {r} | " + " | ".join(str(c[w]) for w in where) + " |" for r, c in sorted(count.items())]
    lines.append("| **total** | " + " | ".join(f"**{sum(c[w] for c in count.values())}**" for w in where) + " |")
    open(OUT + "/drc.md", "w").write("\n".join(lines) + "\n")
    print("drc:\n" + "\n".join(lines))
    return True


RENDER_PY = """
# KLayout (klayout -z -r render.py -rd cfg=...): the merged chip to a PNG
import json
import re
import pya
c = json.load(open(cfg))
view = pya.LayoutView()
view.load_layout(c["gds"], False)
view.load_layer_props(c["lyp"])
view.set_config("background-color", "#ffffff")
view.set_config("grid-visible", "false")
view.set_config("text-visible", "false")
view.max_hier()
view.zoom_fit()
view.save_image(c["png"], c["px"], c["px"])
print("RENDER_DONE")
"""


def render(plan):
    """The chip layout as a picture, the five macros and the pads named on it."""
    cfg = dict(gds=f"{TOP}/stereo_slice_chip.gds", lyp=f"{PDK}/libs.tech/klayout/tech/sky130A.lyp",
               png=f"{TOP}/layout_raw.png", px=2400)
    json.dump(cfg, open(f"{TOP}/render.json", "w"))
    open(f"{TOP}/render.py", "w").write(RENDER_PY)
    r = subprocess.run([KLAYOUT, "-z", "-r", f"{TOP}/render.py", "-rd", f"cfg={TOP}/render.json"],
                       capture_output=True, text=True)
    if "RENDER_DONE" not in r.stdout + r.stderr:
        print("render: FAILED\n" + (r.stdout + r.stderr)[-1500:])
        return False
    from PIL import Image, ImageDraw, ImageFont
    im = Image.open(cfg["png"]).convert("RGB")
    die, px = plan["die"], cfg["px"]
    k = px / die
    cx, cy = plan["core_origin"]
    d = ImageDraw.Draw(im)
    try:
        big = ImageFont.truetype("DejaVuSans-Bold.ttf", 26)
        small = ImageFont.truetype("DejaVuSans.ttf", 17)
    except OSError:
        big = small = ImageFont.load_default()
    for b, (x, y, w, h) in plan["macros"].items():
        x0, y0 = (cx + x) * k, px - (cy + y + h) * k
        x1, y1 = (cx + x + w) * k, px - (cy + y) * k
        d.rectangle([x0, y0, x1, y1], outline=(0, 0, 0), width=4)
        label = f"{b}\n{w:.0f} x {h:.0f} µm"
        tw, th = d.multiline_textbbox((0, 0), label, font=big)[2:]
        bx, by = (x0 + x1 - tw) / 2, (y0 + y1 - th) / 2
        d.rectangle([bx - 8, by - 6, bx + tw + 8, by + th + 6], fill=(255, 255, 255))
        d.multiline_text((bx, by), label, fill=(0, 0, 0), font=big, align="center")
    for p in plan["pads"]:
        x, y = p["x"] * k, px - p["y"] * k
        label = f"{p['pin']} {p['name']}"
        tw, th = d.textbbox((0, 0), label, font=small)[2:]
        d.rectangle([x - tw / 2 - 3, y - th / 2 - 2, x + tw / 2 + 3, y + th / 2 + 2], fill=(255, 255, 255))
        d.text((x - tw / 2, y - th / 2), label, fill=(0, 0, 0), font=small)
    im.save(OUT + "/layout.png")
    im.resize((px // 3, px // 3), Image.LANCZOS).save(OUT + "/layout_small.png")
    print("render:", OUT + "/layout.png")
    return True


if __name__ == "__main__":
    plan = json.load(open(OUT + "/plan.json"))
    steps = sys.argv[1:] or ["netlist", "synth", "pnr", "sta", "lvs", "gds", "drc", "mdrc", "render"]
    if "netlist" in steps:
        netlist(plan)
    if "synth" in steps and not synth():
        sys.exit(1)
    if "pnr" in steps and not pnr(plan):
        sys.exit(1)
    if "sta" in steps and not sta():
        sys.exit(1)
    if "lvs" in steps and not lvs():
        sys.exit(1)
    if "gds" in steps and not gds():
        sys.exit(1)
    if "drctable" in steps:
        drc(run=False)
    if "drc" in steps and not drc():
        sys.exit(1)
    if "mdrc" in steps and not mdrc():
        sys.exit(1)
    if "render" in steps and not render(plan):
        sys.exit(1)
