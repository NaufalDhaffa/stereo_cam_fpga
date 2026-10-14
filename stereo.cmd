@echo off
rem The PC tools of the stereo depth camera, from any directory:
rem
rem   stereo webcam --slices 1      live view of the webcam (left picture and depth)
rem   stereo bootbin status         which BOOT.BIN is on the card, what runs in the FPGA
rem   stereo bootbin 2              install the BOOT.BIN of 2 slices and reboot
rem   stereo board status           sensors and genlock, over ssh
rem   stereo                        the list of tools
rem
rem "stereo <tool> ..." runs host\<tool>.py of this folder with the same arguments.
rem To have it everywhere, put this folder on the PATH once.
setlocal
set "HOST=%~dp0host"
if "%~1"=="" goto list
if not exist "%HOST%\%~1.py" (
    echo stereo: no tool "%~1"
    goto list
)
set "TOOL=%~1"
set "ARGS="
:next
shift
if "%~1"=="" goto run
set ARGS=%ARGS% %1
goto next
:run
python "%HOST%\%TOOL%.py"%ARGS%
exit /b %ERRORLEVEL%
:list
echo usage: stereo ^<tool^> [arguments]
echo tools:
for %%f in ("%HOST%\*.py") do echo   %%~nf
exit /b 1
