:: ENABLE SYNTHETIC TIMERS (DISABLE USEPLATFORMTICK)
:: https://github.com/getggos

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)

:: DISABLE USEPLATFORMTICK
bcdedit /deletevalue useplatformtick >nul 2>&1

echo Synthetic Timers are now enabled and UsePlatformTick is disabled.
echo Please restart your computer.

pause
exit /b 0
