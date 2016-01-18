@echo off
cd MaxOS\System
Title Finding and loading Bootloader
echo Finding bootloader
timeout /T 1 /NOBREAK >nul
if exist Bootloader.bat Goto BootloaderFound
if not exist Bootloader.bat Goto BootloaderNotFound
:BootloaderFound
Echo Bootloader found, Loading Bootloader
timeout /T 2 /NOBREAK >nul
Echo Loaded Bootloader
timeout /T 1 /NOBREAK >nul
GOTO FindingKernel
:BootloaderNotFound
cls
Echo Bootloader not found. Program will exit in 3
timeout /T 1 /NOBREAK >nul
Echo Bootloader not found. Program will exit in 2
timeout /T 1 /NOBREAK >nul
Echo Bootloader not found. Program will exit in 1
timeout /T 1 /NOBREAK >nul
exit
:FindingKernel
Title Finding and loading Kernel
Echo Finding Kernel
timeout /T 1 /NOBREAK >nul
if exist Kernel.bat Goto KernelFound
if not exist Kernel.bat Goto KernelNotFound
:KernelFound
Echo Kernel found, Loading Kernel
timeout /T 1 /NOBREAK >nul
GOTO BootingKernel
:KernelNotFound
cls
Echo Kernel not found. Program will exit in 3
timeout /T 1 /NOBREAK >nul
Echo Kernel not found. Program will exit in 2
timeout /T 1 /NOBREAK >nul
Echo Kernel not found. Program will exit in 1
timeout /T 1 /NOBREAK >nul
exit
:BootingKernel
cls
echo Loading Kernel 北北北北北北北北北北北北北
timeout /T 1 /NOBREAK >nul
cls
echo Loading Kernel 圹圹圹圹圹圹北北北北北北北
timeout /T 1 /NOBREAK >nul
cls
echo Loading Kernel 圹圹圹圹圹圹圹圹圹圹圹圹圹
timeout /T 1 /NOBREAK >nul
echo Load Kernel Successful
timeout /T 2 /NOBREAK >nul
:MaxOSLoading1
cls
color F0
Title Loading MaxOS
Echo                         @@@@@                                 @@@@@
Echo                       @@@ @@@@@                            @@@  @@@@@
Echo                      @@   @@@@@@                          @@    @@@@@@
Echo                     @@    @@@@@@@                        @@     @@@@@@@
Echo                    @@     @@@@@@@@                      @@      @@@@@@@@
Echo                    @@     @@@@@@@@                      @@      @@@@@@@@
Echo                    @      @@@@@@@@                      @       @@@@@@@@
Echo                    @      @@@@@@@@                      @       @@@@@@@@
Echo                    @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@
Echo                    @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@
Echo           @@@      @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@     @@@
Echo          @@ @@     @@@@@@@@@@@@@@@                       @@@@@@@@@@@@@@     @@ @@
Echo          @   @      @@@@@@@@@@@@@                         @@@@@@@@@@@@      @   @
Echo          @   @       @@@@@@@@@@@                           @@@@@@@@@@       @   @
Echo          @@ @@        @@@@@@@@@                             @@@@@@@@        @@ @@
Echo           @@@            @@@                                  @@@            @@@
Echo                                   @@            @@
Echo                                    @@          @@
Echo                                     @@@@    @@@@
Echo                                       @@@@@@@@
echo.
timeout /T 1 /NOBREAK >nul
echo Loading OS 北北北北北北北北北北北北北
timeout /T 1 /NOBREAK >nul
:MaxOSLoading2
cls
Echo                         @@@@@                                 @@@@@
Echo                       @@@ @@@@@                            @@@  @@@@@
Echo                      @@   @@@@@@                          @@    @@@@@@
Echo                     @@    @@@@@@@                        @@     @@@@@@@
Echo                    @@     @@@@@@@@                      @@      @@@@@@@@
Echo                    @@     @@@@@@@@                      @@      @@@@@@@@
Echo                    @      @@@@@@@@                      @       @@@@@@@@
Echo                    @      @@@@@@@@                      @       @@@@@@@@
Echo                    @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@
Echo                    @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@
Echo           @@@      @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@     @@@
Echo          @@ @@     @@@@@@@@@@@@@@@                       @@@@@@@@@@@@@@     @@ @@
Echo          @   @      @@@@@@@@@@@@@                         @@@@@@@@@@@@      @   @
Echo          @   @       @@@@@@@@@@@                           @@@@@@@@@@       @   @
Echo          @@ @@        @@@@@@@@@                             @@@@@@@@        @@ @@
Echo           @@@            @@@                                  @@@            @@@
Echo                                   @@            @@
Echo                                    @@          @@
Echo                                     @@@@    @@@@
Echo                                       @@@@@@@@
echo.
echo Loading OS 圹圹圹圹北北北北北北北北北
timeout /T 1 /NOBREAK >nul
:MaxOSLoading3
cls
Echo                         @@@@@                                 @@@@@
Echo                       @@@ @@@@@                            @@@  @@@@@
Echo                      @@   @@@@@@                          @@    @@@@@@
Echo                     @@    @@@@@@@                        @@     @@@@@@@
Echo                    @@     @@@@@@@@                      @@      @@@@@@@@
Echo                    @@     @@@@@@@@                      @@      @@@@@@@@
Echo                    @      @@@@@@@@                      @       @@@@@@@@
Echo                    @      @@@@@@@@                      @       @@@@@@@@
Echo                    @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@
Echo                    @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@
Echo           @@@      @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@     @@@
Echo          @@ @@     @@@@@@@@@@@@@@@                       @@@@@@@@@@@@@@     @@ @@
Echo          @   @      @@@@@@@@@@@@@                         @@@@@@@@@@@@      @   @
Echo          @   @       @@@@@@@@@@@                           @@@@@@@@@@       @   @
Echo          @@ @@        @@@@@@@@@                             @@@@@@@@        @@ @@
Echo           @@@            @@@                                  @@@            @@@
Echo                                   @@            @@
Echo                                    @@          @@
Echo                                     @@@@    @@@@
Echo                                       @@@@@@@@
echo.
echo Loading OS 圹圹圹圹圹圹圹圹北北北北北
timeout /T 1 /NOBREAK >nul
:MaxOSLoading4Success
cls
Echo                         @@@@@                                 @@@@@
Echo                       @@@ @@@@@                            @@@  @@@@@
Echo                      @@   @@@@@@                          @@    @@@@@@
Echo                     @@    @@@@@@@                        @@     @@@@@@@
Echo                    @@     @@@@@@@@                      @@      @@@@@@@@
Echo                    @@     @@@@@@@@                      @@      @@@@@@@@
Echo                    @      @@@@@@@@                      @       @@@@@@@@
Echo                    @      @@@@@@@@                      @       @@@@@@@@
Echo                    @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@
Echo                    @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@
Echo           @@@      @@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@     @@@
Echo          @@ @@     @@@@@@@@@@@@@@@                       @@@@@@@@@@@@@@     @@ @@
Echo          @   @      @@@@@@@@@@@@@                         @@@@@@@@@@@@      @   @
Echo          @   @       @@@@@@@@@@@                           @@@@@@@@@@       @   @
Echo          @@ @@        @@@@@@@@@                             @@@@@@@@        @@ @@
Echo           @@@            @@@                                  @@@            @@@
Echo                                   @@            @@
Echo                                    @@          @@
Echo                                     @@@@    @@@@
Echo                                       @@@@@@@@
echo.
echo Loading OS 圹圹圹圹圹圹圹圹圹圹圹圹圹
timeout /T 1 /NOBREAK >nul
Echo Load OS Successful
timeout /T 1 /NOBREAK >nul
cls
color 0F
cd \TheMaxOS\MaxOS\
Title MaxOS Login
echo Welcome back, Max
timeout /T 1 /NOBREAK >nul
echo Please enter your password
Echo ----------------------------
set /p PASS=Password: 
if %PASS% == max20091 call cls & cls & License.bat
if not %PASS% == max20091 Goto PasswordWrong
:PasswordWrong
cls
echo Oh, your password is wrong, please try again :)
echo Please enter your password again
Echo ----------------------------
set /p PASS=Password: 
if %PASS% == max20091 call cls & cls & License.bat
if not %PASS% == max20091 Goto PasswordWrong