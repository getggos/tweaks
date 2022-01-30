:: SET TSCSYNCPOLICY TO ENHANCED
:: https://github.com/getggos

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)

:: FOR A BALANCE OF FPS AND INPUT (YOUR EXPERIENCE MAY BE DIFFERENT)
bcdedit /deletevalue tscsyncpolicy >nul 2>&1

echo TscSyncPolicy is now set to default. Please restart your computer.
pause

exit /b 0
