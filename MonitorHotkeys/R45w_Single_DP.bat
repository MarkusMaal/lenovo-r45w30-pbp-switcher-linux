@echo off
setlocal

set "DIR=%~dp0"
set "CMM=%DIR%ControlMyMonitor.exe"
set "MON=\\.\DISPLAY1\Monitor0"

REM --- Disable PBP / multi-picture (restore single-DP values) ---
"%CMM%" /SetValue "%MON%" F5 0
"%CMM%" /SetValue "%MON%" F4 0
"%CMM%" /SetValue "%MON%" A4 0

REM --- Give scaler a moment to collapse back to single mode ---
ping 127.0.0.1 -n 4 >nul

REM --- Reset window select (single dump uses A5=0) ---
"%CMM%" /SetValue "%MON%" A5 0
ping 127.0.0.1 -n 2 >nul

REM --- Set input to DisplayPort (15) ---
"%CMM%" /SetValue "%MON%" 60 15

endlocal
exit /b 0