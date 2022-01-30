:: ENABLE NETWORK AUTOTUNING
:: https://gitlab.com/ggos/support

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)

:: SET AUTOTUNING TO NORMAL
netsh int tcp set global autotuninglevel=normal

:: RESTART NETWORK ADAPTERS
for /f "tokens=3,*" %%i in ('netsh int show interface^|find "Connected"') do (
	netsh int set interface name="%%j" admin="disabled" >nul 2>&1
	netsh int set interface name="%%j" admin="enabled" >nul 2>&1
)

echo Network autotuning is now enabled.
pause

exit /b 0
