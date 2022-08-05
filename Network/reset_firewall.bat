:: Reset Firewall (Beta)

@echo off

dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)
netsh advfirewall set allprofiles state off >nul 2>&1
netsh advfirewall firewall delete rule all
netsh advfirewall set allprofiles firewallpolicy blockinbound,blockoutbound >nul 2>&1
netsh advfirewall reset >nul 2>&1
netsh advfirewall set allprofiles state on >nul 2>&1

pause
exit /b 0
