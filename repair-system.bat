@echo off
echo ==========================================
echo   Repair System Files (SFC & DISM)
echo   Tech Update by DavincsTech
echo ==========================================
echo.

echo Running System File Checker...
sfc /scannow

echo.
echo Running Deployment Image Servicing and Management...
DISM /Online /Cleanup-Image /RestoreHealth

echo.
echo ✅ System repair completed. Restart your PC if needed.
pause
