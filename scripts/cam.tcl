# OV2640 bring-up from the Zynq PS, driven over JTAG with xsdb.
# Camera 0 is on header DATA1 (PS I2C0), camera 1 on DATA3 (PS I2C1).
#
#   xsdb scripts/cam.tcl init                    program the PL, initialise the PS, detect the sensors
#   xsdb scripts/cam.tcl mode svga rgb565        configure both sensors (PL/PS must be initialised)
#   xsdb scripts/cam.tcl mode uxga rgb565 0x83 0x82   ... with explicit CLKRC and R_DVP_SP
#   xsdb scripts/cam.tcl all svga rgb565         init + mode
#   xsdb scripts/cam.tcl reinit svga rgb565      detect + mode, without touching the PL
#   xsdb scripts/cam.tcl get 0 1 0x0A            camera 0, sensor bank (1), register 0x0A
#   xsdb scripts/cam.tcl put 1 0 0xDA 0x09       camera 1, DSP bank (0), register 0xDA
#   xsdb scripts/cam.tcl dump 1                  a few registers of camera 1
#
# SCCB goes through the PS I2C controllers (EMIO pins), so the same register
# accesses can later be done from a bare-metal or Linux program with the
# standard I2C driver; nothing here is PL-specific.
#   EMIO GPIO 0 = PWDN camera 0, GPIO 1 = capture enable, GPIO 2 = PWDN camera 1.

set root [file normalize [file join [file dirname [info script]] ..]]
source [file join $root sensor ov2640_tables.tcl]

set GPIO_DATA 0xE000A048
set GPIO_DIRM 0xE000A284
set GPIO_OEN  0xE000A288

# SCL = CPU_1x / (22 * (divA+1) * (divB+1)) = 111.1 MHz / (22*4*25) = 50.5 kHz.
# Kept slow because the bus only has the weak internal pull-ups.
set I2C_DIV [expr {(3 << 14) | (24 << 8)}]
set OV2640  0x30

# Image orientation, done by the sensor itself (REG04).
set CAM_VFLIP   1                            ;# 1 = flip top/bottom
set CAM_HMIRROR 1                            ;# 1 = mirror left/right

proc reg_w {addr val} { mwr -force $addr $val }
proc reg_r {addr}     { return [mrd -force -value $addr] }

# Select which camera the sccb_* procedures talk to.
proc cam_sel {n} {
  global I2C_CR I2C_ADDR I2C_DATA I2C_ISR I2C_XFER CAM
  set base [expr {0xE0004000 + $n * 0x1000}]
  set CAM      $n
  set I2C_CR   $base
  set I2C_ADDR [expr {$base + 0x08}]
  set I2C_DATA [expr {$base + 0x0C}]
  set I2C_ISR  [expr {$base + 0x10}]
  set I2C_XFER [expr {$base + 0x14}]
}
cam_sel 0

proc i2c_wait {what} {
  global I2C_ISR
  for {set i 0} {$i < 100} {incr i} {
    set isr [reg_r $I2C_ISR]
    if {$isr & 0x204} { reg_w $I2C_ISR 0x2FF; error "SCCB $what: no acknowledge (ISR=[format 0x%03X $isr])" }
    if {$isr & 0x001} { return }
  }
  error "SCCB $what: timeout (ISR=[format 0x%03X $isr])"
}

# Generic access to any device on the selected bus (the ToF sensor shares
# the bus of camera 0): write `reg` followed by the given bytes, or read `n`
# bytes starting at `reg`. At most 15 data bytes (controller FIFO).
#
# The bus only has weak pull-ups and now and then a transfer is not
# acknowledged. Every access is therefore retried a few times, with the
# controller reset in between, before it counts as failed.
proc i2c_retry {body} {
  for {set try 0} {$try < 5} {incr try} {
    if {![catch {uplevel 1 $body} result]} { return $result }
    i2c_reset
    after 5
  }
  error $result
}
proc i2c_w {addr reg args} { i2c_retry [list i2c_w_once $addr $reg {*}$args] }
proc i2c_r {addr reg n}    { i2c_retry [list i2c_r_once $addr $reg $n] }

proc i2c_w_once {addr reg args} {
  global I2C_CR I2C_ADDR I2C_DATA I2C_ISR I2C_DIV
  reg_w $I2C_CR [expr {$I2C_DIV | 0x4E}]     ;# master, transmit, ack, clear FIFO
  reg_w $I2C_ISR 0x2FF
  reg_w $I2C_DATA $reg
  foreach b $args { reg_w $I2C_DATA $b }
  reg_w $I2C_ADDR $addr
  i2c_wait [format "write 0x%02X" $reg]
}

proc i2c_r_once {addr reg n} {
  global I2C_CR I2C_ADDR I2C_DATA I2C_ISR I2C_XFER I2C_DIV
  reg_w $I2C_CR [expr {$I2C_DIV | 0x4E}]
  reg_w $I2C_ISR 0x2FF
  reg_w $I2C_DATA $reg
  reg_w $I2C_ADDR $addr
  i2c_wait [format "address 0x%02X" $reg]
  reg_w $I2C_CR [expr {$I2C_DIV | 0x4F}]     ;# master, receive
  reg_w $I2C_ISR 0x2FF
  reg_w $I2C_XFER $n
  reg_w $I2C_ADDR $addr
  i2c_wait [format "read 0x%02X" $reg]
  set out {}
  for {set i 0} {$i < $n} {incr i} { lappend out [expr {[reg_r $I2C_DATA] & 0xFF}] }
  return $out
}

proc sccb_w {reg val} {
  global OV2640
  i2c_w $OV2640 $reg $val
}

# Pulse the reset of the selected PS I2C controller (SLCR I2C_RST_CTRL). A
# transfer that never completes leaves the controller stuck otherwise.
proc i2c_reset {} {
  global CAM
  reg_w 0xF8000008 0xDF0D                    ;# SLCR unlock
  reg_w 0xF8000224 [expr {1 << $CAM}]
  reg_w 0xF8000224 0
}

proc sccb_r {reg} {
  global OV2640
  return [lindex [i2c_r $OV2640 $reg 1] 0]
}

proc sccb_table {t} { foreach {r v} $t { sccb_w $r $v } }

# Both cameras powered up; cap_en = 0 holds the capture logic in reset.
proc capture_enable {cap_en} {
  global GPIO_DATA GPIO_DIRM GPIO_OEN
  reg_w $GPIO_DIRM 0xFFFFFF
  reg_w $GPIO_OEN  0xFFFFFF
  reg_w $GPIO_DATA [expr {([reg_r $GPIO_DATA] & 0xFFFFF8) | ($cap_en << 1)}]
}

# Hand a ToF reading to the PL, which stamps it into the frame headers:
# GPIO[18:3] = millimetres (0xFFFF = nothing in range), GPIO[19] flips.
proc tof_out {mm} {
  global GPIO_DATA
  set v [reg_r $GPIO_DATA]
  reg_w $GPIO_DATA [expr {($v & 0xF00007) | (($mm & 0xFFFF) << 3) | ((~$v) & 0x80000)}]
  return ""
}

# What the second USB stream carries (depth build only; the capture-only build
# ignores the bit): 0 = camera 1 as it comes from the sensor, 1 = disparity.
proc depth_mode {on} {
  global GPIO_DATA
  reg_w $GPIO_DATA [expr {([reg_r $GPIO_DATA] & 0xEFFFFF) | (($on & 1) << 20)}]
  return ""
}

# Webcam mode of the mini build (EMIO GPIO 21): the FX2LP gets USB Video Class payloads
# (left picture + disparity per row) instead of the three streams of the PC tools.
proc uvc_mode {on} {
  global GPIO_DATA
  reg_w $GPIO_DATA [expr {([reg_r $GPIO_DATA] & 0xDFFFFF) | (($on & 1) << 21)}]
  return ""
}

proc cpu_target {} {
  targets -set -nocase -filter {name =~ "*Cortex-A9*#0"}
}

proc ps_init {} {
  global root
  # CAM_BUILD selects the build: "build" (capture only, the default) or "build/depth"
  global env
  set dir [expr {[info exists env(CAM_BUILD)] ? $env(CAM_BUILD) : "build"}]
  set bit [file join $root $dir cam_usb_top.bit]
  targets -set -nocase -filter {name =~ "APU*"}
  catch {stop}
  targets -set -nocase -filter {name =~ "xc7z010*"}
  puts "programming $bit"
  fpga -file $bit
  cpu_target
  uplevel #0 [list source [file join $root $dir ps7_init.tcl]]   ;# it defines globals
  ps7_init
  ps7_post_config
  puts "PS initialised, PL programmed"
}

proc cam_detect {} {
  global CAM
  sccb_w 0xFF 0x01
  set pid [sccb_r 0x0A]
  set ver [sccb_r 0x0B]
  set mid [expr {([sccb_r 0x1C] << 8) | [sccb_r 0x1D]}]
  puts [format "sensor %d: PID=0x%02X VER=0x%02X MID=0x%04X %s" $CAM $pid $ver $mid \
        [expr {$pid == 0x26 ? "(OV2640)" : "(NOT an OV2640 id)"}]]
  return $pid
}

# Same sequence as esp32-camera: reset, base table, frame size, pixel format.
proc cam_mode {size fmt {clkrc ""} {dvp ""}} {
  global ov2640_settings_cif ov2640_settings_to_cif ov2640_settings_to_svga
  global ov2640_settings_to_uxga ov2640_settings_yuv422 ov2640_settings_rgb565
  global CAM CAM_VFLIP CAM_HMIRROR
  switch $size {
    uxga { set t $ov2640_settings_to_uxga; set mx 1600; set my 1200 }
    svga { set t $ov2640_settings_to_svga; set mx 800;  set my 600 }
    cif  { set t $ov2640_settings_to_cif;  set mx 400;  set my 296 }
    default { error "size must be uxga, svga or cif" }
  }
  switch $fmt {
    rgb565 { set f $ov2640_settings_rgb565 }
    yuv422 { set f $ov2640_settings_yuv422 }
    default { error "format must be rgb565 or yuv422" }
  }
  # CLKRC: bit7 doubles the 12 MHz oscillator, bits5:0 = divider-1.
  if {$clkrc eq ""} { set clkrc 0x82 }
  if {$dvp   eq ""} { set dvp   0x82 }

  sccb_w 0xFF 0x01
  sccb_w 0x12 0x80                           ;# COM7: software reset
  after 50
  sccb_table $ov2640_settings_cif
  # COM2: 1x output drive instead of the table's 3x. With the stronger drive
  # the edges ring on the jumper wires.
  sccb_w 0xFF 0x01
  sccb_w 0x09 0x00

  # Output window = the full sensor window of this mode, no scaling.
  set qx [expr {$mx / 4}]
  set qy [expr {$my / 4}]
  sccb_w 0xFF 0x00
  sccb_w 0x05 0x01                           ;# R_BYPASS: DSP bypassed while changing
  sccb_table $t
  sccb_w 0xFF 0x00
  sccb_w 0x51 [expr {$qx & 0xFF}]            ;# HSIZE
  sccb_w 0x52 [expr {$qy & 0xFF}]            ;# VSIZE
  sccb_w 0x53 0x00                           ;# XOFFL
  sccb_w 0x54 0x00                           ;# YOFFL
  sccb_w 0x55 [expr {(($qy >> 1) & 0x80) | (($qx >> 5) & 0x08)}]   ;# VHYX
  sccb_w 0x57 [expr {($qx >> 2) & 0x80}]     ;# TEST
  sccb_w 0x5A [expr {$qx & 0xFF}]            ;# ZMOW
  sccb_w 0x5B [expr {$qy & 0xFF}]            ;# ZMOH
  sccb_w 0x5C [expr {(($qy >> 6) & 0x04) | (($qx >> 8) & 0x03)}]   ;# ZMHH
  sccb_w 0xFF 0x01
  sccb_w 0x11 $clkrc
  sccb_w 0xFF 0x00
  sccb_w 0xD3 $dvp                           ;# R_DVP_SP: PCLK divider
  sccb_w 0x05 0x00                           ;# R_BYPASS: DSP on
  after 20
  sccb_table $f
  # REG04: 0x28 default, 0x40 = vertical flip (needs 0x10, VREF_EN, with it),
  # 0x80 = horizontal mirror.
  sccb_w 0xFF 0x01
  sccb_w 0x04 [expr {0x28 | ($CAM_VFLIP ? 0x50 : 0) | ($CAM_HMIRROR ? 0x80 : 0)}]
  puts [format "sensor %d configured: %s %s (%dx%d) CLKRC=0x%02X R_DVP_SP=0x%02X" \
        $CAM $size $fmt $mx $my $clkrc $dvp]
}

# Detect and configure every camera that answers. The capture logic is held
# in reset meanwhile, so it never sees the sensors' clocks change.
proc cams_setup {args} {
  capture_enable 0
  after 20
  set found 0
  foreach n {0 1} {
    cam_sel $n
    if {[catch {cam_detect} msg]} {
      puts "sensor $n: not responding ($msg)"
      continue
    }
    if {[llength $args]} {
      # one retry of the whole sequence if a write could not be delivered
      if {[catch {cam_mode {*}$args} msg] && [catch {cam_mode {*}$args} msg]} {
        puts "sensor $n: not responding ($msg)"
        continue
      }
    }
    incr found
  }
  after 300
  capture_enable 1
  puts "cameras ready: $found"
}

# Short forms for the "serve" mode below.
proc sput {n bank reg val} { cam_sel $n; sccb_w 0xFF $bank; sccb_w $reg $val; return "" }
proc sget {n bank reg}     { cam_sel $n; sccb_w 0xFF $bank; return [format 0x%02X [sccb_r $reg]] }
# Any device: bus (0 = camera 0's, 1 = camera 1's), 7-bit address, register.
proc iw {bus addr reg args} { cam_sel $bus; i2c_w $addr $reg {*}$args; return "" }
proc ir {bus addr reg n}    { cam_sel $bus; return [i2c_r $addr $reg $n] }

# Stay connected and execute one Tcl command per input line, answering with
# a line that starts with OK or ERR. Lets a program on the PC change sensor
# registers in milliseconds instead of starting xsdb for every access.
proc serve {} {
  cpu_target
  fconfigure stdout -buffering line
  puts "READY"
  while {[gets stdin line] >= 0} {
    if {$line eq "quit"} { break }
    if {[catch {uplevel #0 $line} res]} { puts "ERR $res" } else { puts "OK $res" }
  }
}

set cmd [lindex $argv 0]
connect
# A freshly started hw_server needs a moment before it lists the board.
for {set i 0} {$i < 80} {incr i} {
  if {![catch {targets -set -nocase -filter {name =~ "*Cortex-A9*#0"}}]} { break }
  after 100
}
switch $cmd {
  init   { ps_init; cams_setup }
  mode   { cpu_target; cams_setup {*}[lrange $argv 1 end] }
  all    { ps_init; cams_setup {*}[lrange $argv 1 end] }
  reinit { cpu_target; cams_setup {*}[lrange $argv 1 end] }
  get    { cpu_target; lassign [lrange $argv 1 end] n bank reg
           cam_sel $n; sccb_w 0xFF $bank
           puts [format "camera %d bank %d reg 0x%02X = 0x%02X" $n $bank $reg [sccb_r $reg]] }
  put    { cpu_target; lassign [lrange $argv 1 end] n bank reg val
           cam_sel $n; sccb_w 0xFF $bank; sccb_w $reg $val }
  cap    { cpu_target; capture_enable [lindex $argv 1] }
  uvc    { cpu_target; uvc_mode [lindex $argv 1] }
  serve  { serve }
  dump   { cpu_target; cam_sel [lindex $argv 1]
           foreach {bank regs} {1 {0x0A 0x0B 0x04 0x09 0x11 0x12 0x15} 0 {0x05 0xD3 0xDA 0xE0 0xC0 0xC1}} {
             sccb_w 0xFF $bank
             foreach r $regs { puts [format "bank %d reg 0x%02X = 0x%02X" $bank $r [sccb_r $r]] }
           } }
  default { puts "usage: cam.tcl init | mode|all|reinit <uxga|svga|cif> <rgb565|yuv422> ?clkrc? ?dvp? | get <cam> <bank> <reg> | put <cam> <bank> <reg> <val> | dump <cam> | cap <0|1>" }
}
disconnect
