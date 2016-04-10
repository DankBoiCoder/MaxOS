@echo off
set /p letter=Enter your drive letter here:
attrib -S -H /S /D %letter%:\*.*
echo Done! Exit in
echo 3
timeout /T 1 /NOBREAK >nul
echo 2
timeout /T 1 /NOBREAK >nul
echo 1
timeout /T 1 /NOBREAK >nul