@echo off
chcp 65001 >nul

if not exist starter.bat (
    goto starter
)

if exist finish.txt (
    goto finish
)

if exist install.bat (
    goto after_reboot
)

goto continue

:starter

:: Create starter.bat
(
echo @echo off
echo timeout /t 3 /NOBREAK >NUL
echo start /max gfpgan_auto-installer.bat
echo exit
) > starter.bat
start starter.bat
exit

:continue
timeout /t 3 /NOBREAK >NUL
echo  _____                                                                                                                                                              _____ 
echo ( ___ )------------------------------------------------------------------------------------------------------------------------------------------------------------( ___ )
echo  ^|   ^|                                                                                                                                                              ^|   ^| 
echo  ^|   ^|                                           /$$      /$$ /$$$$$$$$ /$$        /$$$$$$   /$$$$$$  /$$      /$$ /$$$$$$$$                                        ^|   ^| 
echo  ^|   ^|                                          ^| $$  /$ ^| $$^| $$_____/^| $$       /$$__  $$ /$$__  $$^| $$$    /$$$^| $$_____/                                        ^|   ^| 
echo  ^|   ^|                                          ^| $$ /$$$^| $$^| $$      ^| $$      ^| $$  \__/^| $$  \ $$^| $$$$  /$$$$^| $$                                              ^|   ^| 
echo  ^|   ^|                                          ^| $$/$$ $$ $$^| $$$$$   ^| $$      ^| $$      ^| $$  ^| $$^| $$ $$/$$ $$^| $$$$$                                           ^|   ^| 
echo  ^|   ^|                                          ^| $$$$_  $$$$^| $$__/   ^| $$      ^| $$      ^| $$  ^| $$^| $$  $$$^| $$^| $$__/                                           ^|   ^| 
echo  ^|   ^|                                          ^| $$$/ \  $$$^| $$      ^| $$      ^| $$    $$^| $$  ^| $$^| $$\  $ ^| $$^| $$                                              ^|   ^| 
echo  ^|   ^|                                          ^| $$/   \  $$^| $$$$$$$$^| $$$$$$$$^|  $$$$$$/^|  $$$$$$/^| $$ \/  ^| $$^| $$$$$$$$                                        ^|   ^| 
echo  ^|   ^|                                          ^|__/     \__/^|________/^|________/ \______/  \______/ ^|__/     ^|__/^|________/                                        ^|   ^| 
echo  ^|   ^|                                                                                                                                                              ^|   ^| 
echo  ^|   ^|                                                                                                                                                              ^|   ^| 
echo  ^|   ^|                                                                                                                                                              ^|   ^| 
echo  ^|   ^|   /$$$$$$$$/$$$$$$        /$$$$$$$$/$$   /$$ /$$$$$$$$        /$$$$$$  /$$   /$$ /$$$$$$$$/$$$$$$  /$$      /$$  /$$$$$$  /$$$$$$$$/$$$$$$$$ /$$$$$$$        ^|   ^| 
echo  ^|   ^|  ^|__  $$__/$$__  $$      ^|__  $$__/ $$  ^| $$^| $$_____/       /$$__  $$^| $$  ^| $$^|__  $$__/$$__  $$^| $$$    /$$$ /$$__  $$^|__  $$__/ $$_____/^| $$__  $$       ^|   ^| 
echo  ^|   ^|     ^| $$ ^| $$  \ $$         ^| $$  ^| $$  ^| $$^| $$            ^| $$  \ $$^| $$  ^| $$   ^| $$ ^| $$  \ $$^| $$$$  /$$$$^| $$  \ $$   ^| $$  ^| $$      ^| $$  \ $$       ^|   ^| 
echo  ^|   ^|     ^| $$ ^| $$  ^| $$         ^| $$  ^| $$$$$$$$^| $$$$$         ^| $$$$$$$$^| $$  ^| $$   ^| $$ ^| $$  ^| $$^| $$ $$/$$ $$^| $$$$$$$$   ^| $$  ^| $$$$$   ^| $$  ^| $$       ^|   ^| 
echo  ^|   ^|     ^| $$ ^| $$  ^| $$         ^| $$  ^| $$__  $$^| $$__/         ^| $$__  $$^| $$  ^| $$   ^| $$ ^| $$  ^| $$^| $$  $$$^| $$^| $$__  $$   ^| $$  ^| $$__/   ^| $$  ^| $$       ^|   ^| 
echo  ^|   ^|     ^| $$ ^| $$  ^| $$         ^| $$  ^| $$  ^| $$^| $$            ^| $$  ^| $$^| $$  ^| $$   ^| $$ ^| $$  ^| $$^| $$\  $ ^| $$^| $$  ^| $$   ^| $$  ^| $$      ^| $$  ^| $$       ^|   ^| 
echo  ^|   ^|     ^| $$ ^|  $$$$$$/         ^| $$  ^| $$  ^| $$^| $$$$$$$$      ^| $$  ^| $$^|  $$$$$$/   ^| $$ ^|  $$$$$$/^| $$ \/  ^| $$^| $$  ^| $$   ^| $$  ^| $$$$$$$$^| $$$$$$$/       ^|   ^| 
echo  ^|   ^|     ^|__/  \______/          ^|__/  ^|__/  ^|__/^|________/      ^|__/  ^|__/ \______/    ^|__/  \______/ ^|__/     ^|__/^|__/  ^|__/   ^|__/  ^|________/^|_______/        ^|   ^| 
echo  ^|   ^|                                                                                                                                                              ^|   ^| 
echo  ^|   ^|                                                                                                                                                              ^|   ^| 
echo  ^|   ^|                                                                                                                                                              ^|   ^| 
echo  ^|   ^|    /$$$$$$  /$$$$$$$$/$$$$$$$   /$$$$$$   /$$$$$$  /$$   /$$       /$$$$$$ /$$   /$$  /$$$$$$  /$$$$$$$$/$$$$$$  /$$       /$$       /$$$$$$$$ /$$$$$$$      ^|   ^| 
echo  ^|   ^|   /$$__  $$^| $$_____/ $$__  $$ /$$__  $$ /$$__  $$^| $$$ ^| $$      ^|_  $$_/^| $$$ ^| $$ /$$__  $$^|__  $$__/$$__  $$^| $$      ^| $$      ^| $$_____/^| $$__  $$     ^|   ^| 
echo  ^|   ^|  ^| $$  \__/^| $$     ^| $$  \ $$^| $$  \__/^| $$  \ $$^| $$$$^| $$        ^| $$  ^| $$$$^| $$^| $$  \__/   ^| $$ ^| $$  \ $$^| $$      ^| $$      ^| $$      ^| $$  \ $$     ^|   ^| 
echo  ^|   ^|  ^| $$ /$$$$^| $$$$$  ^| $$$$$$$/^| $$ /$$$$^| $$$$$$$$^| $$ $$ $$        ^| $$  ^| $$ $$ $$^|  $$$$$$    ^| $$ ^| $$$$$$$$^| $$      ^| $$      ^| $$$$$   ^| $$$$$$$/     ^|   ^| 
echo  ^|   ^|  ^| $$^|_  $$^| $$__/  ^| $$____/ ^| $$^|_  $$^| $$__  $$^| $$  $$$$        ^| $$  ^| $$  $$$$ \____  $$   ^| $$ ^| $$__  $$^| $$      ^| $$      ^| $$__/   ^| $$__  $$     ^|   ^| 
echo  ^|   ^|  ^| $$  \ $$^| $$     ^| $$      ^| $$  \ $$^| $$  ^| $$^| $$\  $$$        ^| $$  ^| $$\  $$$ /$$  \ $$   ^| $$ ^| $$  ^| $$^| $$      ^| $$      ^| $$      ^| $$  \ $$     ^|   ^| 
echo  ^|   ^|  ^|  $$$$$$/^| $$     ^| $$      ^|  $$$$$$/^| $$  ^| $$^| $$ \  $$       /$$$$$$^| $$ \  $$^|  $$$$$$/   ^| $$ ^| $$  ^| $$^| $$$$$$$$^| $$$$$$$$^| $$$$$$$$^| $$  ^| $$     ^|   ^| 
echo  ^|   ^|   \______/ ^|__/     ^|__/       \______/ ^|__/  ^|__/^|__/  \__/      ^|______/^|__/  \__/ \______/    ^|__/ ^|__/  ^|__/^|________/^|________/^|________/^|__/  ^|__/     ^|   ^| 
echo  ^|   ^|                                                                                                                                                              ^|   ^|
echo  ^|___^|                                                                                                                                  Made with ❤ by CrazyWolf13  ^|___^|
echo (_____)------------------------------------------------------------------------------------------------------------------------------------------------------------(_____)
echo.
set /p main= "[35mStart the installation process? [Y or N]: [0m"
echo.

if /i not "%main%" == "Y" (
    echo [31mAborted installation process.[0m 
    del starter.bat
    timeout /t 5 /NOBREAK >NUL
    exit
) 
echo [33mYou may have to accept some licenses from Microsoft Store, to install the dependencies.[0m 
echo [33mYou may have to grant admin privileges for python and git installation, contact me via GitHub issue if that is a problem, there are workarounds.[0m
timeout /t 10 /NOBREAK >NUL

SET mypath=%~dp0

:: autostarter
(
echo @echo off
echo timeout /t 15 /NOBREAK
echo cd "%mypath%"
echo start /max gfpgan_auto-installer.bat
echo exit
) > autostart_gfpgan.bat

:: preinstaller
(
echo @echo off
echo echo [34mInstalling Python...[0m 
echo.
echo echo [33mSelect Install now if prompted.[0m 
echo timeout /t 3 /NOBREAK >NUL
echo winget install -e --id Python.Python.3.10 -i --source=winget
echo echo [34mInstalling Git...[0m
echo echo [33mAccept the Admin-Request if prompted.[0m 
echo timeout /t 3 /NOBREAK >NUL
echo winget install git.git
echo echo [34mInstalling WGet...[0m 
echo winget install wget
echo echo.
echo echo [31mA reboot is REQUIRED. The Script will automatically launch after the next reboot.[0m
echo set /p reboot="[35mReboot now? [Y or N]: [0m"
echo if /i not "%%reboot%%" == "Y" ^(
echo    echo [31mYou HAVE to do a restart otherwise the script will not work![0m 
echo    pause
echo    exit
echo ^)
echo echo [34mCreating autostart entry, the script will automatically continue after the reboot.[0m
echo move autostart_gfpgan.bat "%%APPDATA%%\Microsoft\Windows\Start Menu\Programs\Startup\autostart_gfpgan.bat"
echo echo [33mRebooting in 30 Seconds[0m 
echo shutdown.exe /r /t 35 
echo timeout /t 33 /NOBREAK
) > preinstall.bat

:: installer
(
echo @echo off
echo echo.
echo echo [34mScript to continue the installation after Reboot[0m 
echo python.exe -m pip install --upgrade pip
echo pip install wheel
echo echo [34mCloning GFPGAN Repository[0m
echo git clone https://github.com/TencentARC/GFPGAN.git
echo cd GFPGAN
echo echo [34mInstalling all Python dependencies[0m
echo set /a torch_ver=n
echo set /p torch_ver="[35mIf you have a NVIDIA GPU you can install a CUDA version to get better performance. Install NVIDIA specific version? [Y or N?][Default=n]: [0m"
echo if /i torch_ver=="y" ^(
echo    echo [31mThis only works if you have a NVIDIA GPU.[0m
echo    echo [33mYou also have to manually install CUDA by NVIDIA from this URL: https://developer.nvidia.com/cuda-downloads[0m
echo    pause
echo    pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
echo    ^) else ^(
echo    pip3 install torch torchvision torchaudio
echo ^)
echo pip install opencv-python scipy tqdm yapf lmdb pyyaml
echo pip install basicsr^>^=1.4.2 facexlib^>^=0.2.5 realesrgan
echo python setup.py develop
echo echo [34mDownloading model 1.4[0m
echo set model_link^=https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth
echo set /p model_link^="[35mIf you want to download another model, paste the link here, otherwise press [ENTER]: [0m"
echo wget %%model_link%% -P experiments/pretrained_models

echo set "filepath=%localappdata%\Programs\Python\Python310\Lib\site-packages\basicsr\data\degradations.py"
echo set "tempfile=%localappdata%\Programs\Python\Python310\Lib\site-packages\basicsr\data\degradations_temp.py"
echo if not exist "%filepath%" (
echo    echo File not found: %filepath%
echo    exit /b 1
echo )
echo set /a counter=0
echo for /f "delims=" %%i in ('findstr /n "^" "%filepath%"') do (
echo     set /a counter+=1
echo     if !counter! equ 8 (
echo         echo from torchvision.transforms.functional import rgb_to_grayscale>>"%tempfile%"
echo     ) else (
echo         echo %%i>>"%tempfile%"
echo     )
echo )
echo move /y "%tempfile%" "%filepath%"




echo del "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\autostart_gfpgan.bat"
echo.
echo cd ..
echo echo " "^>finish.txt
echo start /max gfpgan_auto-installer.bat
echo exit
) > install.bat

start /max preinstall.bat
exit
wr7
:after_reboot
start /max install.bat
exit

:finish
del finish.txt
echo  _____                                            _____ 
echo  ^( ___ ^)------------------------------------------^( ___ ^)
echo  ^|   ^|                                            ^|   ^| 
echo  ^|   ^|   /$$$$$$$   /$$$$$$  /$$   /$$ /$$$$$$$$  ^|   ^| 
echo  ^|   ^|  ^| $$__  $$ /$$__  $$^| $$$ ^| $$^| $$_____/  ^|   ^| 
echo  ^|   ^|  ^| $$  \ $$^| $$  \ $$^| $$$$^| $$^| $$        ^|   ^| 
echo  ^|   ^|  ^| $$  ^| $$^| $$  ^| $$^| $$ $$ $$^| $$$$$     ^|   ^| 
echo  ^|   ^|  ^| $$  ^| $$^| $$  ^| $$^| $$  $$$$^| $$__/     ^|   ^| 
echo  ^|   ^|  ^| $$  ^| $$^| $$  ^| $$^| $$\  $$$^| $$        ^|   ^| 
echo  ^|   ^|  ^| $$$$$$$/^|  $$$$$$/^| $$ \  $$^| $$$$$$$$  ^|   ^| 
echo  ^|   ^|  ^|_______/  \______/ ^|__/  \__/^|________/  ^|   ^| 
echo  ^|___^|                                            ^|___^| 
echo ^(_____^)------------------------------------------^(_____^)
echo.
timeout /t 3 /NOBREAK >NUL
echo.
pause
echo Cleaning up...
del preinstall.bat
del starter.bat
del install.bat
exit
