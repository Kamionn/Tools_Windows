:: Restart Network 

@echo off

dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)
for /f "tokens=3,*" %%i in ('netsh int show interface^|find "Connected"') do (
	netsh int set interface name="%%j" admin="disabled" >nul 2>&1
	netsh int set interface name="%%j" admin="enabled" >nul 2>&1
)
