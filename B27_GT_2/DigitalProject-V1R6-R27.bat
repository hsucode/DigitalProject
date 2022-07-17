@echo off

cd /d %~dp0

REM ============================================================================================
REM CATIA 3DEXPERIENCE installation path
REM ============================================================================================

REM GTR3=DSB27-B27全版本
REM GTR4=GTDSB27-只有GT的B27版本
REM GTR5=DPV1R5-只为GTDS定制
REM GTR6=DPV1R5-为CATIA全版本定制
REM GTR7=自主开发的CAA


IF EXIST "C:\Program Files\Dassault Systemes\B27" set CAT_CODE=C:\Program Files\Dassault Systemes\B27
REM IF EXIST "%~dp0\GTR4" set CAT_CODE=%~dp0\GTR4

rem set CAT_CODE=%~dp0\GTR4

set CATPath1=%CAT_CODE%
set CATPath2=%~dp0\GTR6
set CATPath3=
set CATPath4=
set CATPath5=
set CATPath6=

SET CheckCODE=false
If NOT DEFINED CAT_CODE SET CheckCODE=true
IF NOT EXIST "%CAT_CODE%" SET CheckCODE=true
IF %CheckCODE%==true ( 
ECHO CAT_CODE hasn't been set well, please set it to right CATIA installation path first! 
ECHO Please contact administrator. 
PAUSE
EXIT
)



REM ============================================================================================
REM set caa code env 
REM ============================================================================================
IF NOT EXIST C:\Temp MD	C:\Temp

REM ============================================================================================
REM Start of CATIA
REM ============================================================================================
"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "DigitalProject.exe" -env Env7 -direnv %~dp0\CATEnv -nowindow

:CATIA
REM "%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "CNEXT.exe" -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" -nowindow
REM "%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "CNEXT.exe" -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" -nowindow
::"%CAT_CODE%\win_b64\code\bin\CATSTART.exe"  -run "CNEXT.exe" -env CATIA_P3.V5-6R2019.B27 -direnv "%CAT_CODE%\CATEnv" -nowindow 
:DP
::"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "DigitalProject.exe" -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" -nowindow
:Tools
REM "%CAT_CODE%\win_b64\code\bin\CATUTIL.exe"  -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" 
REM "%CAT_CODE%\win_b64\code\bin\CATIAENV.exe"  -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" 
REM ".\GTR4\win_b64\code\bin\CATIAENV.exe"  -env Env -direnv ".\CATEnv"
REM "%CAT_CODE%\win_b64\code\bin\DSLicMgt.exe"  -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" 
REM "%CAT_CODE%\win_b64\code\bin\CATNodelockMgt.exe"  -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" 
REM "%CAT_CODE%\win_b64\code\bin\CATPrinterManager.exe"  -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" 
REM "%CAT_CODE%\win_b64\code\bin\CATOptionsMgt.exe"  -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" 
REM "%CAT_CODE%\win_b64\code\bin\CATSoftwaREMgt.exe"  -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" 
REM "%CAT_CODE%\win_b64\code\bin\CATSTART.exe"  -run VaultClientSetup.EXE -env DigitalProject.V1R5.64 -direnv "%CAT_CODE%\CATEnv" -nowindow

pause
