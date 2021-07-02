echo off
color F0
title Adobe Debloater by Flicky
mode con: cols=92 lines=21

setlocal enabledelayedexpansion
for /f "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "del=%%a"
)

:admincheck
cls && echo Checking for Administrator Permissions. && timeout 1 >nul && cls && echo Checking for Administrator Permissions.. && timeout 1 >nul && cls && echo Checking for Administrator Permissions... && timeout 1 >nul && cls
    net session >nul 2>&1
    if %errorLevel% == 0 (
	goto start
    ) else (
	cls
        echo Error: Please Run As Administrator.
	timeout 2 >nul
	exit /b 1
    )

:start
cls && echo This utility was made by [36m4Flicky
timeout 3 > nul
echo.
echo [30mIts purpose is to debloat Adobe programs.
echo Debloating pre-installed stuff like: CameraProfiles, LensProfiles, Cache, etc.
timeout 7 > nul

:main
cls && echo [30mThis utility allows you to choose what you want to remove.
echo [31mHowever, keep in mind that it's not REVERSIBLE. You've been forewarned.
echo [30mAre you sure you want to continue?
echo.
echo Credits to: canonez, Phlegm, + revisitable
echo [36m4https://twitter.com/Flicky_VFX[30m
echo.
set /p main= 
if %main% == "y" "Y" "yes" "Yes" "YES" goto cameraprofiles
if %main% == "n" "N" "no" "No" "NO" cls && echo Exiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit

:cameraprofiles
cls && echo [36m4Delete [30mthe CameraProfiles folder? (y / n)
echo.
set /p con= 
if %con% == "y" "Y" "yes" "Yes" "YES" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\CameraProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles && goto lensprofiles
if %con% == "n" "N" "no" "No" "NO" goto lensprofiles

:lensprofiles
cls && echo [36m4Delete [30mthe LensProfiles folder? (y / n)
echo.
set /p con= 
if %con% == "y" "Y" "yes" "Yes" "YES" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles && goto adobetutorials
if %con% == "n" "N" "no" "No" "NO" goto adobetutorials

:adobetutorials
cls && echo [36m4Remove [30mAll Adobe Tutorials? (y / n)
echo.
set /p con= 
if %con% == "y" "Y" "yes" "Yes" "YES" Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe && goto mediacachefiles
if %con% == "n" "N" "no" "No" "NO" goto mediacachefiles

:mediacachefiles
cls && echo [36m4Remove [30mMedia Cache Files? (y / n)
echo.
set /p con= 
if %con% == "y" "Y" "yes" "Yes" "YES" Del /s /f /q C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files && Del /s /f /q C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache && goto tempcacheprefetch
if %con% == "n" "N" "no" "No" "NO" goto tempcacheprefetch

:tempcacheprefetch
cls && echo [36m4Remove [30mAdobe Temp Cache And Prefetch? (y / n)
echo.
set /p con= 
if %con% == "y" "Y" "yes" "Yes" "YES" del /s /f /q c:\windows\temp\*.* && rd /s /q c:\windows\temp && md c:\windows\temp && del /s /f /q C:\WINDOWS\Prefetch && del /s /f /q %temp%\*.* && rd /s /q %temp% && md %temp% && goto exit
if %con% == "n" "N" "no" "No" "NO" goto exit

:exit
cls && echo [33m4Debloating [30mcomplete.
echo Thanks for using [36m4Flicky's [30mAdobe Debloating Utility! && timeout 4 > nul && cls
echo [30mExiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit
