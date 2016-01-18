@echo off
setlocal EnableDelayedExpansion EnableExtensions
cd CookieData
title Cookie Clicker Batch
color 0F
bg maximize
bg font 8
bg cursor 1
set cookie=0
set per=0
set cursor=0
set grandma=0
set farm=0
set factory=0
set mine=0
set shipment=0
set alchemy_lab=0
set portal=0
set time_machine=0
set antimatter_condenser=0
set prism=0
if not exist save (echo cookie=%cookie%) >> save
for /f %%a in (save) do set %%a
start cookie
start store

:game
cls
for /f %%a in (save) do set %%a
cmdMenuSel f8%f0 "Click me" "About" "Exit"
if %ERRORLEVEL% == 1 set /a cookie+=1 & call save
if %ERRORLEVEL% == 2 Goto About
if %ERRORLEVEL% == 3 exit
goto game

:about
cls
Echo Cookie Clicker Batch Edition is created by max20091
cmdMenuSel f8%f0 "get back to the game"
if %ERRORLEVEL% == 1 Goto game