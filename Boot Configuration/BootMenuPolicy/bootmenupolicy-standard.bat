:: SET BOOTMENUPOLICY TO STANDARD
:: https://github.com/getggos

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)

:: FOR STANDARD BOOT MENU (BLUE SCREEN WITH BOX OPTIONS)
bcdedit /set bootmenupolicy standard

echo BootMenuPolicy is now set to standard.
pause

exit /b 0
