@echo Uninstall is running ..
@echo off
:CATIA
"C:\Program Files\Dassault Systemes\B27_GT\DSUninstall.bat"

:DelShortcut
if exist "C:\Users\%username%\Desktop\Digital Project V1,R5(B27).lnk" del "C:\Users\%username%\Desktop\Digital Project V1,R5(B27).lnk" 1>nul 2>nul

:DelMenu
rd /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Digital Project V1,R5(B27)" 1>nul 2>nul

