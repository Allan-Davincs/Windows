@echo off
echo ==============================
echo   USB Restore Tool
echo ==============================
echo.
echo WARNING: This will erase everything on the selected USB!
echo.

:: Ask user for disk number
set /p disknum=Enter the disk number of your USB (check size in diskpart -> list disk): 

(
echo list disk
echo select disk %disknum%
echo clean
echo create partition primary
echo format fs=fat32 quick
echo assign
echo exit
) | diskpart

echo.
echo ==============================
echo   USB has been restored!
echo ==============================
pause
