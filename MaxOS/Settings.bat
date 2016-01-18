@echo off
:settings
cls
title Setting
cmdMenuSel f8%f0 "Choose colors" "Changelog" "About" "Quit"
if %ERRORLEVEL% == 1 goto color
if %ERRORLEVEL% == 2 goto Changelog
if %ERRORLEVEL% == 3 goto About
if %ERRORLEVEL% == 4 call cls & cls & MainmenuMaxOS.bat

:color
cls
Title Set background color
echo Backround Color?
echo.
cmdMenuSel f8%f0 "Black" "Blue" "Green" "Aqua" "Red" "Purple" "Yellow" "White" "Gray" "Light Blue" "Light Green" "Light Aqua" "Light Red" "Light Purple" "Light Yellow" "Bright White" 
if %ERRORLEVEL% == 1 set bc=0
if %ERRORLEVEL% == 2 set bc=1
if %ERRORLEVEL% == 3 set bc=2
if %ERRORLEVEL% == 4 set bc=3
if %ERRORLEVEL% == 5 set bc=4
if %ERRORLEVEL% == 6 set bc=5
if %ERRORLEVEL% == 7 set bc=6
if %ERRORLEVEL% == 8 set bc=7
if %ERRORLEVEL% == 9 set bc=8
if %ERRORLEVEL% == 10 set bc=9
if %ERRORLEVEL% == 11 set bc=A
if %ERRORLEVEL% == 12 set bc=B
if %ERRORLEVEL% == 13 set bc=C
if %ERRORLEVEL% == 14 set bc=D
if %ERRORLEVEL% == 15 set bc=E
if %ERRORLEVEL% == 16 set bc=F
cls
echo Font Color?
echo.
Title Set Font Color
cmdMenuSel f8%f0 "Black" "Blue" "Green" "Aqua" "Red" "Purple" "Yellow" "White" "Gray" "Light Blue" "Light Green" "Light Aqua" "Light Red" "Light Purple" "Light Yellow" "Bright White" 
if %ERRORLEVEL% == 1 set fc=0
if %ERRORLEVEL% == 2 set fc=1
if %ERRORLEVEL% == 3 set fc=2
if %ERRORLEVEL% == 4 set fc=3
if %ERRORLEVEL% == 5 set fc=4
if %ERRORLEVEL% == 6 set fc=5
if %ERRORLEVEL% == 7 set fc=6
if %ERRORLEVEL% == 8 set fc=7
if %ERRORLEVEL% == 9 set fc=8
if %ERRORLEVEL% == 10 set fc=9
if %ERRORLEVEL% == 11 set fc=A
if %ERRORLEVEL% == 12 set fc=B
if %ERRORLEVEL% == 13 set fc=C
if %ERRORLEVEL% == 14 set fc=D
if %ERRORLEVEL% == 15 set fc=E
if %ERRORLEVEL% == 16 set fc=F
cls
color %bc%%fc%
Echo Done
timeout /T 1 /NOBREAK >nul
call cls & cls & goto settings

:Changelog
Title Changlog
cls
Echo v0.1
Echo Initial Release
Echo ------------------
Echo v0.2
Echo Added calculator + matrix
Echo ------------------
Echo v0.3
Echo Added strobe light + text editor
Echo ------------------
Echo v0.5
Echo Code optimized
Echo Added Login + Logout screen
Echo Added Nyan Cat + True BSOD Screen
Echo ------------------
Echo v1.0 Major update
Echo Moved Initial Release to Beta Release
Echo Added DDOS tool + Ping tool + Max20091 BootMark
Echo Revamped Login screen with new loading bar + Kernel and Bootloader Detection
Echo Added Kernel + Bootloader file -just for fun- at system directory
Echo Optimized code
Echo Added Cookie Clicker clone batch edition
Echo Added UAC + Wifi hotspot tool
Echo Added License
Echo Moved From TUI -Text based User Interface- to ATUI -Advanced Text based User Interface- with the help from cmdmenusel which support mouse and arrow button

cmdmenusel f8%f0 "OK"
if %ERRORLEVEL% == 1 call cls & cls & goto settings
:About
Title About this batch file
cls
Echo This MaxOS was created by max20091 at max20091 Youtube Channel
Echo cmdmenusel was created by judago at judago.webs.com -Link Dead-
Echo ECHOC was created by joedf at sourceforge.net/projects/echoc/
cmdmenusel f8%f0 "OK"
if %ERRORLEVEL% == 1 call cls & cls & goto settings