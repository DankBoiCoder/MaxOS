@echo off
Title Max20091 License Agreement
Color 9A
:License
Echo THIS WILL NOT APPLY TO CMDMENUSEL, ECHOC AND BG :)
Echo @max20091 - 2015
Echo Max20091 License Version 1.0
Echo These batch file distributed under this license is distributed on an "AS IS"
Echo WITHOUT WARRANTIES OF ANY KIND. THE AUTHORS AND DISTRIBUTORS OF THE SOFTWARE
Echo DISCLAIM ANY LIABILITY. ANYONE WHO USES, COPIES, MODIFIES , OR (RE)DISTRIBUTES
Echo ANY PART OF THE SOFTWARE IS, BY SUCH ACTION(S), ACCEPTING AND AGREEING TO BE
Echo BOUND BY ALL TERMS AND CONDITIONS OF THIS LICENSE. IF YOU DO NOT ACCEPT THEM,
Echo DO NOT USE, COPY, MODIFY, NOR (RE)DISTRIBUTE THE SOFTWARE, NOR ANY PART(S) THERE OF.
Echo .
Echo 1. This batch file will use UAC Prompt which will need an Administrator account.
Echo 2. You can modify, use, copy and cannot sale these file (donation are welcome).
Echo 3. You can not Re-distribute this project if you don't have my permission.
Echo 4. Please read README before press yes!
Echo ----------------------------------------------------------------------
Echo Will you accept this license?
cmdMenuSel f8%f0 "Yes" "No"
if %ERRORLEVEL% == 1 call cls & cls & MainmenuMaxOS.bat
if %ERRORLEVEL% == 2 exit
