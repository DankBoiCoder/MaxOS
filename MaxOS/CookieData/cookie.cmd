@echo off
setlocal EnableDelayedExpansion EnableExtensions
cd data
taskkill /im wscript.exe /f >Nul
title Cookies
color 0F
bg font 8
bg cursor 0

:cookie
cls
for /f %%a in (save) do set %%a
echo %cookie% cookies
ping localhost -n 2 >nul
::call save
goto cookie