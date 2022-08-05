:: Tracert

@echo off
title Network Tracer
Set /p Host= Enter Hostname or IP Address: 
if defined Host (
   powershell -Command tracert -d %Host% 
)

pause
exit /b 0
