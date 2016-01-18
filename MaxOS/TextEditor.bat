@echo off
:main
cls
Title Text Editor Menu
color 0F
echo -------------------------------------------------------------------------------
echo Text Editior
echo -------------------------------------------------------------------------------
echo.
cmdMenuSel f8%f0 "New" "Open" "Delete" "Quit"
if %ERRORLEVEL% == 1 goto new
if %ERRORLEVEL% == 2 goto open
if %ERRORLEVEL% == 3 goto delete
if %ERRORLEVEL% == 4 call cls & cls & MainmenuMaxOS.bat

:new
Title New text
color 0F
call cls & cls
set /p words=
set /p name=Save As:
echo %words% >> home\%name%
bg cursor 0
goto main

:open
Title Open Text
color 0F
call cls & cls
echo -------------------------------------------------------------------------------
Echo File name list
dir home /b
echo -------------------------------------------------------------------------------
echo.
set /p file=Open:
cls
type home\%file%
pause >nul
bg cursor 0
goto main

:delete
color 0F
Title Delete Text
call cls & cls
echo -------------------------------------------------------------------------------
Echo File name list
dir home /b
echo -------------------------------------------------------------------------------
echo.
set /p del=Delete file name:
del home\%del%
echo %del% Deleted
pause >nul
bg cursor 0
goto main