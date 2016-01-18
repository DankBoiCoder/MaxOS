@echo off
title Batch Calculator by max20091
color 1f
:Calculate
cls
echo --------------------------------------------------------------
echo Welcome to Batch Calculator by max20091
echo --------------------------------------------------------------
echo.
set /p sum=Put your number to here: 
set /a ans=%sum%
echo.
echo Answer= %ans%
echo --------------------------------------------------------------
Echo Do you want to calculate new number?
cmdMenuSel f8%f0 "Yes, please" "Nope"
if %ERRORLEVEL% == 1 goto Calculate
if %ERRORLEVEL% == 2 call cls & cls & MainmenuMaxOS.bat