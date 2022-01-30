:: RESET NETWORK ADAPTERS
:: https://github.com/getggos

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)
devcon /? >nul 2>&1 || ( echo This script requires devcon in the system path. && pause && exit /b 1 )

:: RESET NETWORK ADAPTERS
devcon remove =net >nul 2>&1
devcon rescan >nul 2>&1

echo Your network adapters have been reset.
pause

exit /b 0
