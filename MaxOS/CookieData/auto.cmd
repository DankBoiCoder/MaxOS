@echo off
setlocal EnableDelayedExpansion EnableExtensions
cd data
mode 17,1
title Auto Clicker
color 0F
bg font 8
bg cursor 0

:auto
for /f %%a in (save) do set %%a
set /a cookie+=%auto%
call save
ping localhost -n 3 >nul
goto auto