@echo off
:: Windows 11 Online Update Script
:: Run as Administrator

echo Checking for updates...
UsoClient StartScan
timeout /t 10 /nobreak >nul

echo Downloading updates...
UsoClient StartDownload
timeout /t 30 /nobreak >nul

echo Installing updates...
UsoClient StartInstall
timeout /t 30 /nobreak >nul

echo Updates installed. Restarting in 30 seconds...
timeout /t 30 /nobreak >nul

shutdown /r /t 0
