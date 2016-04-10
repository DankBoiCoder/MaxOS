@echo off
TITLE --max20091 Wifi Hotspot creator tool using cmd-- v2.0 Final
:MENU
cls
ECHO................................................
ECHO max20091 Wifi Hotspot creator tool using cmd v2.0
ECHO................................................
ECHO Tested no virus, free of charge and very easy to use
ECHO ...............................................
cmdMenuSel f8%f0 "Check Hosted Network support" "Create Wifi Hotspot(also can use to change hotspot name and password)" "Enable Wifi Hotspot" "Delete (Stop using) Wifi Hotspot" "Check Wifi Hotspot status" "Changelog" "Doi sang tieng Viet" "Exit"
ECHO.
if %ERRORLEVEL% == 1 GOTO CHECKHOSTEDNETWORKSUPPORTENG
if %ERRORLEVEL% == 2 GOTO CREATEWIFIHOTSPOTENG
if %ERRORLEVEL% == 3 GOTO ENABLEWIFIHOTSPOTENG
if %ERRORLEVEL% == 4 GOTO DELETEWIFIHOTSPOTENG
if %ERRORLEVEL% == 5 GOTO WIFISTATUSENG
if %ERRORLEVEL% == 6 GOTO CHANGELOGENG
if %ERRORLEVEL% == 7 GOTO MENUVI
if %ERRORLEVEL% == 8 call cls & cls & MainmenuMaxOS.bat
:CHECKHOSTEDNETWORKSUPPORTENG
cls
netsh wlan show drivers
ECHO Done :)
ECHO Please check Hosted Network supported, if it say "Yes", you can create your own wifi hotspot.
pause
GOTO MENU

:CREATEWIFIHOTSPOTENG
cls
set /p wifiname= Put your Wifi name here (numbers and letters only):
set /p wifipassword= Put your password here (numbers and letters only):
netsh wlan set hostednetwork mode=allow ssid=%wifiname% key=%wifipassword%
ECHO Done :)
pause
GOTO MENU

:ENABLEWIFIHOTSPOTENG
cls
netsh wlan start hostednetwork
ECHO Done :)
pause
GOTO MENU

:DELETEWIFIHOTSPOTENG
cls
netsh wlan set hostednetwork mode=disallow
ECHO Done :)
pause
GOTO MENU

:WIFISTATUSENG
cls
netsh wlan show hostednetwork
ECHO Done :)
pause
GOTO MENU

:CHANGELOGENG
cls
ECHO v1.0:
ECHO Initial release
ECHO -
ECHO v1.1:
ECHO Delete Disable Wifi
ECHO Optimize command
ECHO Using cls command
ECHO Spell mistake checked
ECHO -
ECHO v1.2 Final:
ECHO Using pause command
ECHO Delete "Press 1 to return to menu" and using "GOTO MENU" command
ECHO Added Vietnamese
ECHO -
ECHO v2.0 Final:
ECHO Using Advanced Text based User Interface instead of Text based User Interface
ECHO Optimized and deleted useless commands
ECHO Embedded inside MaxOS
Pause
GOTO MENU

:MENUVI
cls
ECHO................................................
ECHO Phan mem tao Wifi boi max20091 voi cmd v2.0
ECHO................................................
ECHO Da kiem tra virus,mien phi, rat de su dung va chi 100KB
ECHO ...............................................
cmdMenuSel f8%f0 "Kiem tra Hosted Network support" "Tao Wifi Hotspot(co the dung muc nay de doi username va mat khau)" "Bat Wifi Hotspot" "Xoa (Dung su dung) Wifi Hotspot" "kiem tra tinh trang Wifi Hotspot" "Changelog" "Change to English" "Thoat"
ECHO.
if %ERRORLEVEL% == 1 GOTO CHECKHOSTEDNETWORKSUPPORTVI
if %ERRORLEVEL% == 2 GOTO CREATEWIFIHOTSPOTVI
if %ERRORLEVEL% == 3 GOTO ENABLEWIFIHOTSPOTVI
if %ERRORLEVEL% == 4 GOTO DELETEWIFIHOTSPOTVI
if %ERRORLEVEL% == 5 GOTO WIFISTATUSVI
if %ERRORLEVEL% == 6 GOTO CHANGELOGVI
if %ERRORLEVEL% == 7 GOTO MENU
if %ERRORLEVEL% == 8 call cls & cls & MainmenuMaxOS.bat
:CHECKHOSTEDNETWORKSUPPORTVI
cls
netsh wlan show drivers
ECHO Xong :)
ECHO Xin kiem tra Hosted Network supported, neu ghi "Yes" thi ban co the tao wifi hotspot.
pause
GOTO MENUVI

:CREATEWIFIHOTSPOTVI
cls
set /p wifiname= Dat ten Wifi vao day (Chi chu va so):
set /p wifipassword= Dat mat khau vao day (Chi chu va so):
netsh wlan set hostednetwork mode=allow ssid=%wifiname% key=%wifipassword%
ECHO Xong :)
pause
GOTO MENUVI

:ENABLEWIFIHOTSPOTVI
cls
netsh wlan start hostednetwork
ECHO Xong :)
pause
GOTO MENUVI

:DELETEWIFIHOTSPOTVI
cls
netsh wlan set hostednetwork mode=disallow
ECHO Xong :)
pause
GOTO MENUVI

:WIFISTATUSVI
cls
netsh wlan show hostednetwork
ECHO Xong :)
pause
GOTO MENUVI

:CHANGELOGVI
cls
ECHO v1.0:
ECHO Lan dau phat hanh
ECHO -
ECHO v1.1:
ECHO Xoa "Delete Wifi"
ECHO Su dung cau lenh cls
ECHO Toi uu cac cau lenh
ECHO Kiem tra loi chinh ta
ECHO -
ECHO v1.2 Final:
ECHO Dung lenh Pause
ECHO Xoa "Press 1 to return to menu" va su dung cau lenh "GOTO MENU"
ECHO Them tieng Viet
ECHO -
ECHO v2.0 Final:
ECHO Dung Advanced Text based User Interface thay cho Text based User Interface
ECHO Xoa command khong su dung
ECHO Nhung vao MaxOS
pause
GOTO MENUVI





