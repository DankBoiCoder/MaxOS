@echo off
Title Website Ping application
color 0e
cls
cmdmenusel f8%f0 "Start Ping a Website" "Exit"
if %ERRORLEVEL% == 1 GOTO :Ping
if %ERRORLEVEL% == 2 call cls & cls & MainmenuMaxOS.bat
:Ping
cls
echo Enter the website you would like to ping
set input=
set /p input= Enter your URL here:
cls
echo Processing your request
ping %input%
Echo Done:)
Echo Do you want to ping again?
cmdmenusel f8%f0 "Yes, please" "Exit"
if %ERRORLEVEL% == 1 GOTO :Ping
if %ERRORLEVEL% == 2 call cls & cls & MainmenuMaxOS.bat