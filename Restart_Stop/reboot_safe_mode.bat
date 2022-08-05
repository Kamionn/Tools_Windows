:: Reboot in safe mode

@echo off

dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)
bcdedit /deletevalue safebootalternateshell >nul 2>&1
bcdedit /set safeboot minimal >nul 2>&1
shutdown /r /f /t 5