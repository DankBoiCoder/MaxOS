@echo off
setlocal EnableDelayedExpansion EnableExtensions
cd data
taskkill /im wscript.exe /f >Nul
mode 32,24
title Store
color 0F
bg font 8
bg cursor 0
set auto=0
for /f %%a in (save) do set %%a
if %auto% gtr 0 start auto

:store
cls
::for /f %%a in (save) do set %%a
echo %cursor% Cursors
echo %grandma% Grandmas
echo %farm% Farms
echo %factory% Factorys
echo %Mine% Mines
echo %Shipment% Shipments
echo %alchemy_lab% Alchemy labs
echo %portal% Portals
echo %time_machine% Time machines
echo %antimatter_condenser% Antimatter condensers
echo %prism% Prisms
echo.
cmdMenuSel f8%f0 "Cursor 10" "Grandma 100" "Farm 500" "Factory 3000" "Mine 10000" "Shipment 40000" "Alchemy lab 200000" "Portal 1667000" "Time machine 123457000" "Antimatter condenser 4000000000" "Prism 75000000000"
if %ERRORLEVEL% == 1 goto cursor
if %ERRORLEVEL% == 2 goto grandma
if %ERRORLEVEL% == 3 goto farm
if %ERRORLEVEL% == 4 goto factory
if %ERRORLEVEL% == 5 goto mine
if %ERRORLEVEL% == 6 goto shipment
if %ERRORLEVEL% == 7 goto alchemy_lab
if %ERRORLEVEL% == 8 goto portal
if %ERRORLEVEL% == 9 goto time_machine
if %ERRORLEVEL% == 10 goto antimatter_condenser
if %ERRORLEVEL% == 11 goto prism

:cursor
for /f %%a in (save) do set %%a
if %cookie% lss 10 goto store
set /a cursor+=1 & set /a auto+=1
set /a cookie-=10
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:grandma
for /f %%a in (save) do set %%a
if %cookie% lss 100 goto store
set /a grandma+=1 & set /a auto+=5
set /a cookie-=100
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:farm
for /f %%a in (save) do set %%a
if %cookie% lss 500 goto store
set /a farm+=1 & set /a auto+=40
set /a cookie-=500
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:factory
for /f %%a in (save) do set %%a
if %cookie% lss 3000 goto store
set /a factory+=1 & set /a auto+=100
set /a cookie-=3000
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:mine
for /f %%a in (save) do set %%a
if %cookie% lss 10000 goto store
set /a mine+=1 & set /a auto+=400
set /a cookie-=10000
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:shipment
for /f %%a in (save) do set %%a
if %cookie% lss 40000 goto store
set /a shipment+=1 & set /a auto+=1000
set /a cookie-=40000
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:alchemy_lab
for /f %%a in (save) do set %%a
if %cookie% lss 200000 goto store
set /a alchemy_lab+=1 & set /a auto+=4000
set /a cookie-=200000
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:portal
for /f %%a in (save) do set %%a
if %cookie% lss 1667000 goto store
set /a portal+=1 & set /a auto+=66660
set /a cookie-=1667000
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:time_machine
for /f %%a in (save) do set %%a
if %cookie% lss 123457000 goto store
set /a time_machine+=1 & set /a auto+=987650
set /a cookie-=123457000
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:antimatter_condenser
for /f %%a in (save) do set %%a
if %cookie% lss 4000000000 goto store
set /a antimatter_condenser+=1 & set /a auto+=9999990
set /a cookie-=4000000000
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store

:prism
for /f %%a in (save) do set %%a
if %cookie% lss 75000000000 goto store
set /a prism+=1 & set /a auto+=10000000
set /a cookie-=75000000000
call save
if "%auto%" == "1" taskkill /im cmd.exe >nul /f
ping localhost -n 2 >nul
goto store