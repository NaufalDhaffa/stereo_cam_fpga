# Runs one RTL testbench in xsim against the vectors in build/golden.
#
#   scripts\sim.ps1 tb_rectify                rectifier, left camera
#   scripts\sim.ps1 tb_rectify CAM=1          right camera
#   scripts\sim.ps1 tb_chip -Golden build\golden_alt     vectors from another folder
#
# Make the vectors first:  python -m stereo.golden data/<recording> <pair>
param([Parameter(Mandatory = $true)][string]$Top, [string[]]$Generics = @(), [string]$Golden = "build\golden")

$root   = Split-Path -Parent $PSScriptRoot
$vivado = "D:\Xilinx\2025.2\Vivado\bin"
$work   = Join-Path $root "build\sim\$Top"
New-Item -ItemType Directory -Force $work | Out-Null
Copy-Item (Join-Path $root "$Golden\*") $work          # $readmemh and `include look here
Push-Location $work
try {
    $src = @(Get-ChildItem (Join-Path $root "rtl\*.v") | Where-Object { $_.Name -notmatch '^(cam_usb_top|fx2_writer|cam_mux|cam_capture|byte_fifo)\.v$' } | ForEach-Object FullName)
    $src += @(Get-ChildItem (Join-Path $root "rtl\mini\*.v") | ForEach-Object FullName)
    $src += @(Get-ChildItem (Join-Path $root "rtllocks\*.v") | Where-Object { $_.Name -match '^(depth_frontend|frame_format)\.v$' } | ForEach-Object FullName)
    $src += @("depth_frontend.v", "frame_format.v" | ForEach-Object { Join-Path $root "rtl\blocks\$_" })
    $src += (Join-Path $root "rtl\tb\$Top.v")
    & "$vivado\xvlog.bat" -nolog -i $work @src
    if ($LASTEXITCODE -ne 0) { throw "xvlog failed" }
    # quoted, because the .bat wrapper would split NAME=VALUE at the equals sign
    $gen = @(); foreach ($g in $Generics) { $gen += @("-generic_top", "`"$g`"") }
    & "$vivado\xelab.bat" -nolog -timescale 1ns/1ps $Top -s sim @gen
    if ($LASTEXITCODE -ne 0) { throw "xelab failed" }
    & "$vivado\xsim.bat" -nolog sim -R
} finally {
    Pop-Location
}
