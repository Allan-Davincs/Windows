@echo off
:: Windows 11 - Add Current Microsoft Account to Administrators
:: Run this file as Administrator

echo Detecting currently signed-in user...
set "CurrentUser=%username%"

echo Current local username detected: %CurrentUser%
echo Adding %CurrentUser% to Administrators group...

net localgroup administrators "%CurrentUser%" /add

if %errorlevel% equ 0 (
    echo Successfully added %CurrentUser% to Administrators.
) else (
    echo Failed to add %CurrentUser%. Please check username and run as Administrator.
)

echo.
echo Current Administrators:
net localgroup administrators

pause
