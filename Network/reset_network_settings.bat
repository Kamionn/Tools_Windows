:: Reset network settings (beta)

@echo off

dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)
ipconfig /flushdns >nul 2>&1
netsh int ipv4 reset >nul 2>&1
netsh int ipv6 reset >nul 2>&1
netsh winsock reset >nul 2>&1

pause
exit /b 0
