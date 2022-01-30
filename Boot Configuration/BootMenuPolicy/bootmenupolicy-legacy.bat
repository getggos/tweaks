:: SET BOOTMENUPOLICY TO LEGACY
:: https://github.com/getggos

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)

:: FOR LEGACY BOOT MENU (BLACK SCREEN WITH PLAIN TEXT OPTIONS)
bcdedit /set bootmenupolicy legacy

echo BootMenuPolicy is now set to legacy.
pause

exit /b 0
