@echo off
:BatchGotAdmin
:-------------------------------------
cls
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
:MainMenu
title MaxOS Main Menu v1.0
cls
Echo MaxOS version 1.0 Beta
Echo Today: %date%
Echo Time:  %time%
Echo ---------------------------------
cmdmenusel f8%f0 "Applications" "Fun App" "System App" "Setting" "Log Out" "Shutdown MaxOS"
if %ERRORLEVEL% == 1 GOTO Apps
if %ERRORLEVEL% == 2 GOTO FunApps
if %ERRORLEVEL% == 3 GOTO SystemFile
if %ERRORLEVEL% == 4 call cls & cls & Settings.bat
if %ERRORLEVEL% == 5 call cls & cls & MaxOSLogOut.bat
if %ERRORLEVEL% == 6 exit

:Apps
Title Apps
cls
cmdmenusel f8%f0 "Command Prompt" "Text Editor" "Calculator" "DDOS Tool" "Website Ping Tool" "Back to main menu"
if %ERRORLEVEL% == 1 call cls & cls & %comspec% & GOTO Apps
if %ERRORLEVEL% == 2 call cls & cls & TextEditor.bat
if %ERRORLEVEL% == 3 call cls & cls & Calculator.bat
if %ERRORLEVEL% == 4 call cls & cls & WebsiteDDOS.bat
if %ERRORLEVEL% == 5 call cls & cls & WebsitePing.bat
if %ERRORLEVEL% == 6 GOTO MainMenu

:FunApps
Title Fun Apps
cls
cmdmenusel f8%f0 "Matrix number" "Annoying Strobe Light" "BSOD" "Nyan Cat" "Cookie Clicker Batch Edition" "Back to main menu"
if %ERRORLEVEL% == 1 call cls & cls & Matrix.bat
if %ERRORLEVEL% == 2 call cls & cls & AnnoyingStrobeLight.bat
if %ERRORLEVEL% == 3 call cls & cls & BSOD.bat & MainmenuMaxOS.bat
if %ERRORLEVEL% == 4 call cls & cls & NyanCat.bat
if %ERRORLEVEL% == 5 call cls & cls & CookieClicker.bat
if %ERRORLEVEL% == 6 GOTO MainMenu

:SystemFile
Title System apps
cls
echo This may access your computer, not the MaxOS
cmdmenusel f8%f0 "View Kernel" "View Bootloader" "Check 32 bit or 64 bit CPU and OS" "max20091 BootMark batch edition" "Wifi Hotspot Control" "Power Timer" "Back to Main menu"
if %ERRORLEVEL% == 1 call cls & cls & System\Kernel.bat & GOTO SystemFile
if %ERRORLEVEL% == 2 call cls & cls & System\Bootloader.bat & GOTO SystemFile
if %ERRORLEVEL% == 3 call cls & cls & System\Is32Or64OS.vbs & GOTO SystemFile
if %ERRORLEVEL% == 4 call cls & cls & System\BootMark.vbs & GOTO SystemFile
if %ERRORLEVEL% == 5 call cls & cls & WifiHotspot.bat
if %ERRORLEVEL% == 6 call cls & cls & PowerTimer.bat
if %ERRORLEVEL% == 7 GOTO MainMenu