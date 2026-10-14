# OV2640 bring-up from the Zynq PS, driven over JTAG with xsdb.
#
#   xsdb scripts/cam.tcl init                    program the PL, initialise the PS, detect the sensor
#   xsdb scripts/cam.tcl mode uxga rgb565        configure the sensor (PL/PS must be initialised)
#   xsdb scripts/cam.tcl mode svga rgb565 0x80 0x82   ... with explicit CLKRC and R_DVP_SP
#   xsdb scripts/cam.tcl all uxga rgb565         init + mode
#   xsdb scripts/cam.tcl get 1 0x0A              read sensor-bank register 0x0A
#   xsdb scripts/cam.tcl put 0 0xDA 0x09          write DSP-bank register 0xDA
#
# SCCB goes through the PS I2C0 controller (EMIO pins -> header DATA1), so
# the same register accesses can later be done from a bare-metal or Linux
# program with the standard I2C driver; nothing here is PL-specific.
#   EMIO GPIO 0 = PWDN (1 = power down), EMIO GPIO 1 = capture enable.

set root [file normalize [file join [file dirname [info script]] ..]]
source [file join $root sensor ov2640_tables.tcl]

set I2C_CR    0xE0004000
set I2C_ADDR  0xE0004008
set I2C_DATA  0xE000400C
set I2C_ISR   0xE0004010
set I2C_XFER  0xE0004014
set GPIO_DATA 0xE000A048
set GPIO_DIRM 0xE000A284
set GPIO_OEN  0xE000A288

# SCL = CPU_1x / (22 * (divA+1) * (divB+1)) = 111.1 MHz / (22*4*25) = 50.5 kHz.
# Kept slow because the bus only has the weak internal pull-ups.
set I2C_DIV [expr {(3 << 14) | (24 << 8)}]
set OV2640  0x30

# Image orientation, done by the sensor itself (REG04).
set CAM_VFLIP   1                            ;# 1 = flip top/bottom
set CAM_HMIRROR 0                            ;# 1 = mirror left/right

proc reg_w {addr val} { mwr -force $addr $val }
proc reg_r {addr}     { return [mrd -force -value $addr] }

proc i2c_wait {what} {
  global I2C_ISR
  for {set i 0} {$i < 100} {incr i} {
    set isr [reg_r $I2C_ISR]
    if {$isr & 0x204} { reg_w $I2C_ISR 0x2FF; error "SCCB $what: no acknowledge (ISR=[format 0x%03X $isr])" }
    if {$isr & 0x001} { return }
  }
  error "SCCB $what: timeout (ISR=[format 0x%03X $isr])"
}

proc sccb_w_once {reg val} {
  global I2C_CR I2C_ADDR I2C_DATA I2C_ISR I2C_DIV OV2640
  reg_w $I2C_CR [expr {$I2C_DIV | 0x4E}]     ;# master, transmit, ack, clear FIFO
  reg_w $I2C_ISR 0x2FF
  reg_w $I2C_DATA $reg
  reg_w $I2C_DATA $val
  reg_w $I2C_ADDR $OV2640
  i2c_wait [format "write 0x%02X" $reg]
}

# The bus only has weak pull-ups, so an occasional missed acknowledge is
# retried instead of aborting a 200-register table.
set sccb_retries 0
proc sccb_w {reg val} {
  global sccb_retries
  for {set try 0} {$try < 5} {incr try} {
    if {![catch {sccb_w_once $reg $val} msg]} { return }
    incr sccb_retries
    after 5
  }
  error $msg
}

proc sccb_r {reg} {
  global I2C_CR I2C_ADDR I2C_DATA I2C_ISR I2C_XFER I2C_DIV OV2640
  reg_w $I2C_CR [expr {$I2C_DIV | 0x4E}]
  reg_w $I2C_ISR 0x2FF
  reg_w $I2C_DATA $reg
  reg_w $I2C_ADDR $OV2640
  i2c_wait [format "address 0x%02X" $reg]
  reg_w $I2C_CR [expr {$I2C_DIV | 0x4F}]     ;# master, receive
  reg_w $I2C_ISR 0x2FF
  reg_w $I2C_XFER 1
  reg_w $I2C_ADDR $OV2640
  i2c_wait [format "read 0x%02X" $reg]
  return [expr {[reg_r $I2C_DATA] & 0xFF}]
}

proc sccb_table {t} { foreach {r v} $t { sccb_w $r $v } }

proc gpio {pwdn cap_en} {
  global GPIO_DATA GPIO_DIRM GPIO_OEN
  reg_w $GPIO_DIRM 0x3
  reg_w $GPIO_OEN  0x3
  reg_w $GPIO_DATA [expr {($cap_en << 1) | $pwdn}]
}

proc cpu_target {} {
  targets -set -nocase -filter {name =~ "*Cortex-A9*#0"}
}

proc ps_init {} {
  global root
  set bit [file join $root build cam_usb_top.bit]
  targets -set -nocase -filter {name =~ "APU*"}
  catch {stop}
  targets -set -nocase -filter {name =~ "xc7z010*"}
  puts "programming $bit"
  fpga -file $bit
  cpu_target
  uplevel #0 [list source [file join $root build ps7_init.tcl]]   ;# it defines globals
  ps7_init
  ps7_post_config
  puts "PS initialised, PL programmed"
}

proc cam_detect {} {
  gpio 0 0
  after 20
  sccb_w 0xFF 0x01
  set pid [sccb_r 0x0A]
  set ver [sccb_r 0x0B]
  set mid [expr {([sccb_r 0x1C] << 8) | [sccb_r 0x1D]}]
  puts [format "sensor: PID=0x%02X VER=0x%02X MID=0x%04X %s" $pid $ver $mid \
        [expr {$pid == 0x26 ? "(OV2640)" : "(NOT an OV2640 id)"}]]
  return $pid
}

# Same sequence as esp32-camera: reset, base table, frame size, pixel format.
proc cam_mode {size fmt {clkrc ""} {dvp ""}} {
  global ov2640_settings_cif ov2640_settings_to_cif ov2640_settings_to_svga
  global ov2640_settings_to_uxga ov2640_settings_yuv422 ov2640_settings_rgb565
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
  if {$clkrc eq ""} { set clkrc 0x82 }   ;# 12 MHz x2 /3: UXGA at 5 fps, PCLK 24 MHz
  if {$dvp   eq ""} { set dvp   0x82 }

  gpio 0 0                                   ;# hold the capture logic in reset
  sccb_w 0xFF 0x01
  sccb_w 0x12 0x80                           ;# COM7: software reset
  after 50
  sccb_table $ov2640_settings_cif
  # COM2: 1x output drive instead of the table's 3x. With the stronger drive
  # the edges ring on the jumper wires, PCLK double-clocks and the capture
  # logic and FIFO get corrupted.
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
  sccb_w 0x11 $clkrc                         ;# CLKRC: bit7 = x2, bits5:0 = divider-1
  sccb_w 0xFF 0x00
  sccb_w 0xD3 $dvp                           ;# R_DVP_SP: PCLK divider
  sccb_w 0x05 0x00                           ;# R_BYPASS: DSP on
  after 20
  sccb_table $f
  # REG04: 0x28 default, 0x40 = vertical flip (needs 0x10, VREF_EN, with it),
  # 0x80 = horizontal mirror.
  global CAM_VFLIP CAM_HMIRROR
  sccb_w 0xFF 0x01
  sccb_w 0x04 [expr {0x28 | ($CAM_VFLIP ? 0x50 : 0) | ($CAM_HMIRROR ? 0x80 : 0)}]
  after 300
  gpio 0 1                                   ;# release the capture logic
  puts [format "sensor configured: %s %s (%dx%d) CLKRC=0x%02X R_DVP_SP=0x%02X" \
        $size $fmt $mx $my $clkrc $dvp]
}

set cmd [lindex $argv 0]
connect
switch $cmd {
  init { ps_init; cam_detect }
  mode { cpu_target; cam_mode {*}[lrange $argv 1 end] }
  all  { ps_init; cam_detect; cam_mode {*}[lrange $argv 1 end] }
  reinit { cpu_target; cam_detect; cam_mode {*}[lrange $argv 1 end] }
  get  { cpu_target; sccb_w 0xFF [lindex $argv 1]
         puts [format "bank %d reg 0x%02X = 0x%02X" [lindex $argv 1] [lindex $argv 2] [sccb_r [lindex $argv 2]]] }
  put  { cpu_target; sccb_w 0xFF [lindex $argv 1]; sccb_w [lindex $argv 2] [lindex $argv 3] }
  cap  { cpu_target; gpio 0 [lindex $argv 1] }
  dump { cpu_target
         foreach {bank regs} {1 {0x0A 0x0B 0x09 0x11 0x12 0x15} 0 {0x05 0xD3 0xDA 0xE0 0xC0 0xC1}} {
           sccb_w 0xFF $bank
           foreach r $regs { puts [format "bank %d reg 0x%02X = 0x%02X" $bank $r [sccb_r $r]] }
         } }
  default { puts "usage: cam.tcl init | mode <uxga|svga|cif> <rgb565|yuv422> ?clkrc? ?dvp? | all ... | get <bank> <reg> | put <bank> <reg> <val> | cap <0|1>" }
}
disconnect
