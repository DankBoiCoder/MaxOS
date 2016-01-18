@echo off
Title Power Timer
:menu
cls
cmdmenusel f8%f0 "Shutdown with timer" "Restart with timer" "Abort all" "Exit"
if %ERRORLEVEL% == 1 GOTO ShutdownTimer
if %ERRORLEVEL% == 2 GOTO LogOutTimer
if %ERRORLEVEL% == 3 shutdown -a & goto menu
if %ERRORLEVEL% == 4 call cls & cls & MainmenuMaxOS.bat
:ShutdownTimer
cls
set /p time= Put your time here in second: 
shutdown -s -t %time%
Echo Done :)
Pause
goto menu
:LogOutTimer
cls
set /p time= Put your time here in second: 
shutdown -r -t %time%
Echo Done :)
Pause
goto menu