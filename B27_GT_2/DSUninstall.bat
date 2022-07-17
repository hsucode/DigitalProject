@echo Uninstall is running ..
@echo off
if exist "C:\Users\user\AppData\Local\Temp\Uninstall.bat" del "C:\Users\user\AppData\Local\Temp\Uninstall.bat"
Move "C:\Program Files\Dassault Systemes\B27_GT\win_b64\Uninstall.bat"  "C:\Users\user\AppData\Local\Temp\Uninstall.bat" 1>nul 2>nul
"C:\Users\user\AppData\Local\Temp\Uninstall.bat" 2>nul
