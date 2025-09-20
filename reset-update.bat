@echo off
echo ==========================================
echo   Reset Windows Update Components
echo   Tech Update by DavincsTech
echo ==========================================
echo.

net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver

ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 Catroot2.old

net start wuauserv
net start cryptSvc
net start bits
net start msiserver

echo.
echo ✅ Windows Update components have been reset.
pause
