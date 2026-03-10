@echo off
setlocal

set "DIR=%~dp0"
set "CMM=%DIR%ControlMyMonitor.exe"
set "MON=\\.\DISPLAY1\Monitor0"

REM --- Enable PBP (from your dump) ---
"%CMM%" /SetValue "%MON%" A4 65535
"%CMM%" /SetValue "%MON%" F4 513
"%CMM%" /SetValue "%MON%" F5 257

REM --- Wait for scaler to finish switching into PBP ---
ping 127.0.0.1 -n 5 >nul

REM --- Set Window 512 to HDMI1 ---
"%CMM%" /SetValue "%MON%" A5 512
ping 127.0.0.1 -n 2 >nul
"%CMM%" /SetValue "%MON%" 60 17

REM --- Return selection back to 512 (keeps UI stable) ---
ping 127.0.0.1 -n 2 >nul
"%CMM%" /SetValue "%MON%" A5 512

endlocal
exit /b 0