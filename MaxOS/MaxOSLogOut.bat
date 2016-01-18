@echo off
:Logout
Title You have logged out
cls
echo You have Logged Out, please enter your password to log-in
echo Please enter your password
set /p PASS=Password: 
if %PASS% == max20091 call cls & cls & MainmenuMaxOS.bat
if not %PASS% == max20091 Goto PasswordWrong
:PasswordWrong
cls
echo Oh, your password is wrong, please try again :)
echo Please enter your password again
set /p PASS=Password: 
if %PASS% == max20091 call cls & cls & MainmenuMaxOS.bat
if not %PASS% == max20091 Goto PasswordWrong