:: RESET NETWORK SETTINGS
:: https://github.com/getggos

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)
devcon /? >nul 2>&1 || ( echo This script requires devcon in the system path. && pause && exit /b 1 )

:: RESET NETWORK SETTINGS
netsh winsock reset >nul 2>&1
netsh int ipv4 reset >nul 2>&1
netsh int ipv6 reset >nul 2>&1
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
ipconfig /flushdns >nul 2>&1

:: RESTART NETWORK ADAPTERS
devcon disable =net >nul 2>&1
timeout /t 3 /nobreak >nul 2>&1
devcon enable =net >nul 2>&1

echo Your network settings have been reset.
pause

exit /b 0
