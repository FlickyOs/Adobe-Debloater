echo off
color F0
title Adobe Debloater by Flicky
mode con: cols=92 lines=21

setlocal enabledelayedexpansion
for /f "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "del=%%a"
)

:start
cls && echo This utility was made by [36m4Flicky
timeout 3 > nul
echo.
echo [30mIts purpose is to debloat Adobe programs.
echo.
echo Debloating pre-installed stuff like: CameraProfiles, LensProfiles, Cache, etc.
timeout 7 > nul

:main
cls && echo [30mThis utility allows you to choose what you want to remove.
echo [31mHowever, keep in mind that it's not REVERSIBLE. You've been forewarned.
echo [30mAre you sure you want to continue?
echo.
echo Credits to: canonez, Phlegm, revisitable
echo [36mTwitter:https://twitter.com/Flicky_VFX
echo.
set /p con=
if /i "%con%" == "n" cls && echo Exiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit
if /i "%con%" == "N" cls && echo Exiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit
if /i "%con%" == "no" cls && echo Exiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit
if /i "%con%" == "No" cls && echo Exiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit
if /i "%con%" == "NO" cls && echo Exiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit
if /i "%con%" == "y" "Y" "yes" "Yes" "YES" (
       goto :cameraprofiles

:cameraprofiles
cls && echo [36mDelete [30mthe CameraProfiles folder? (y / n)
echo.
set /p main= 
if /i "%main%" == "y" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\CameraProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles
if /i "%main%" == "Y" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\CameraProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles
if /i "%main%" == "yes" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\CameraProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles
if /i "%main%" == "Yes" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\CameraProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles
if /i "%main%" == "YES" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\CameraProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles
if %con% == "n" goto :lensprofiles
if %con% == "N" goto :lensprofiles
if %con% == "no" goto :lensprofiles
if %con% == "No" goto lensprofiles
if %con% == "NO" goto lensprofiles

:lensprofiles
cls && echo [36mDelete [30mthe LensProfiles folder? (y / n)
echo.
set /p main= 
if /i "%main%" == "y" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles
if /i "%main%" == "Y" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles
if /i "%main%" == "yes" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles
if /i "%main%" == "Yes" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles
if /i "%main%" == "YES" Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles
if %con% == "n" goto :adobetutorials
if %con% == "N" goto :adobetutorials
if %con% == "no" goto :adobetutorials
if %con% == "No" goto :adobetutorials
if %con% == "NO" goto :adobetutorials

:adobetutorials
cls && echo [36mRemove [30mAll Adobe Tutorials? (y / n)
echo.
set /p main= 
if /i "%main%" == "y" Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe && goto mediacachefiles
if /i "%main%" == "Y" Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe && goto mediacachefiles
if /i "%main%" == "yes" Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe && goto mediacachefiles
if /i "%main%" == "Yes" Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe && goto mediacachefiles
if /i "%main%" == "YES" Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe && goto mediacachefiles
if %con% == "n" goto :mediacachefiles
if %con% == "N" goto :mediacachefiles
if %con% == "no" goto :mediacachefiles
if %con% == "No" goto :mediacachefiles
if %con% == "NO" goto :mediacachefiles

:mediacachefiles
cls && echo [36mRemove [30mMedia Cache Files? (y / n)
echo.
set /p main=
if /i "%main%" == "y" @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files
if /i "%main%" == "Y" @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files
if /i "%main%" == "yes" @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files
if /i "%main%" == "Yes" @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files
if /i "%main%" == "YES" @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files
if %con% == "n" goto :tempcacheprefetch
if %con% == "N" goto :tempcacheprefetch
if %con% == "no" goto :tempcacheprefetch
if %con% == "No" goto :tempcacheprefetch
if %con% == "NO" goto :tempcacheprefetch


:tempcacheprefetch
cls && echo [36mRemove [30mAdobe Temp Cache And Prefetch? (y / n)
echo.
set /p main= 
if /i "%main%" == "y" del /s /f /q c:\windows\temp\*.* && rd /s /q c:\windows\temp && md c:\windows\temp && del /s /f /q C:\WINDOWS\Prefetch && del /s /f /q %temp%\*.* && rd /s /q %temp% && md %temp%
if /i "%main%" == "Y" del /s /f /q c:\windows\temp\*.* && rd /s /q c:\windows\temp && md c:\windows\temp && del /s /f /q C:\WINDOWS\Prefetch && del /s /f /q %temp%\*.* && rd /s /q %temp% && md %temp%
if /i "%main%" == "yes" del /s /f /q c:\windows\temp\*.* && rd /s /q c:\windows\temp && md c:\windows\temp && del /s /f /q C:\WINDOWS\Prefetch && del /s /f /q %temp%\*.* && rd /s /q %temp% && md %temp%
if /i "%main%" == "Yes" del /s /f /q c:\windows\temp\*.* && rd /s /q c:\windows\temp && md c:\windows\temp && del /s /f /q C:\WINDOWS\Prefetch && del /s /f /q %temp%\*.* && rd /s /q %temp% && md %temp%
if /i "%main%" == "YES" del /s /f /q c:\windows\temp\*.* && rd /s /q c:\windows\temp && md c:\windows\temp && del /s /f /q C:\WINDOWS\Prefetch && del /s /f /q %temp%\*.* && rd /s /q %temp% && md %temp%
if %con% == "n" goto :exit
if %con% == "N" goto :exit
if %con% == "no" goto :exit
if %con% == "No" goto :exit
if %con% == "NO" goto :exit

:exit
cls && echo [33mDebloating [30mcomplete.
echo Thanks for using [36mFlicky's [30mAdobe Debloating Utility! && timeout 4 > nul && cls
echo [30mExiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit