:: DISABLE SYNTHETIC TIMERS (ENABLE USEPLATFORMTICK)
:: https://github.com/getggos

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)

:: ENABLE USEPLATFORMTICK
bcdedit /set useplatformtick yes >nul 2>&1

echo Synthetic Timers are now disabled and UsePlatformTick is enabled.
echo Please restart your computer.

pause
exit /b 0
