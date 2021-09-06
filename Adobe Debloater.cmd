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
if /i "%main%" == "y" cls && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles" && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\Settings\Adobe\Profiles\Camera"
if /i "%main%" == "Y" cls && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles" && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\Settings\Adobe\Profiles\Camera"
if /i "%main%" == "yes" cls && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles" && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\Settings\Adobe\Profiles\Camera"
if /i "%main%" == "Yes" cls && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles" && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\Settings\Adobe\Profiles\Camera"
if /i "%main%" == "YES" cls && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles" && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\Settings\Adobe\Profiles\Camera"
if %con% == "n" cls && goto :lensprofiles
if %con% == "N" cls && goto :lensprofiles
if %con% == "no" cls && goto :lensprofiles
if %con% == "No" cls && goto :lensprofiles
if %con% == "NO" cls && goto :lensprofiles

:lensprofiles
cls && echo [36mDelete [30mthe LensProfiles folder? (y / n)
echo.
set /p main= 
if /i "%main%" == "y" cls && Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles"
if /i "%main%" == "Y" cls &&  Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles"
if /i "%main%" == "yes" cls &&  Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles"
if /i "%main%" == "Yes" cls &&  Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles"
if /i "%main%" == "YES" cls &&  Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles && @RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles"
if %con% == "n" cls && goto :adobetutorials
if %con% == "N" cls && goto :adobetutorials
if %con% == "no" cls && goto :adobetutorials
if %con% == "No" cls && goto :adobetutorials
if %con% == "NO" cls && goto :adobetutorials

:adobetutorials
cls && echo [36mRemove [30mAll Adobe Tutorials? (y / n)
echo.
set /p main= 
if /i "%main%" == "y" cls && Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe"
if /i "%main%" == "Y" cls && Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe"
if /i "%main%" == "yes" cls && Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe"
if /i "%main%" == "Yes" cls && Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe"
if /i "%main%" == "YES" cls && Del /s /f /q C:\Users\Public\Documents\Adobe && @RD /S /Q "C:\Users\Public\Documents\Adobe"
if %con% == "n" cls && goto :mediacachefiles
if %con% == "N" cls && goto :mediacachefiles
if %con% == "no" cls && goto :mediacachefiles
if %con% == "No" cls && goto :mediacachefiles
if %con% == "NO" cls && goto :mediacachefiles

:mediacachefiles
cls && echo [36mRemove [30mMedia Cache Files? (Recommended) (y / n)
echo.
set /p main=
if /i "%main%" == "y" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache"
if /i "%main%" == "Y" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache"
if /i "%main%" == "yes" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache"
if /i "%main%" == "Yes" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache"
if /i "%main%" == "YES" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache"
if %con% == "n" cls && goto :MotionGraphicsTemplates
if %con% == "N" cls && goto :MotionGraphicsTemplates
if %con% == "no" cls && goto :MotionGraphicsTemplates
if %con% == "No" cls && goto :MotionGraphicsTemplates
if %con% == "NO" cls && goto :MotionGraphicsTemplates

:MotionGraphicsTemplates
cls && echo [36mRemove [30mMotion Graphics Templates? (Recommended) (y / n)
echo.
set /p main=
if /i "%main%" == "y" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Captions and Subtitles" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Credits"
if /i "%main%" == "Y" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Captions and Subtitles" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Credits"
if /i "%main%" == "yes" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Captions and Subtitles" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Credits"
if /i "%main%" == "Yes" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Captions and Subtitles" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Credits"
if /i "%main%" == "YES" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Captions and Subtitles" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Credits"
if %con% == "n" cls && goto :Logs
if %con% == "N" cls && goto :Logs
if %con% == "no" cls && goto :Logs
if %con% == "No" cls && goto :Logs
if %con% == "NO" cls && goto :Logs

:Logs
cls && echo [36mRemove [30mLogs? (y / n)
echo.
set /p main=
if /i "%main%" == "y" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Team Projects Local Hub" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\CRLogs" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Peak Files"
if /i "%main%" == "Y" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Team Projects Local Hub" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\CRLogs" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Peak Files"
if /i "%main%" == "yes" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Team Projects Local Hub" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\CRLogs" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Peak Files"
if /i "%main%" == "Yes" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Team Projects Local Hub" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\CRLogs" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Peak Files"
if /i "%main%" == "YES" cls && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Team Projects Local Hub" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\CRLogs" && @RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Peak Files"
if %con% == "n" cls && goto :Autosaves
if %con% == "N" cls && goto :Autosaves
if %con% == "no" cls && goto :Autosaves
if %con% == "No" cls && goto :Autosaves
if %con% == "NO" cls && goto :Autosaves

:Autosaves
cls && echo [36mRemove [30mAuto Saves And Video Previews? (Not Recommended) (y / n)
echo.
set /p main=
if /i "%main%" == "y" cls && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Auto-Save" && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Video Previews"
if /i "%main%" == "Y" cls && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Auto-Save" && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Video Previews"
if /i "%main%" == "yes" cls && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Auto-Save" && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Video Previews"
if /i "%main%" == "Yes" cls && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Auto-Save" && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Video Previews"
if /i "%main%" == "YES" cls && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Auto-Save" && @RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Video Previews"
if %con% == "n" cls && goto :tempcacheprefetch
if %con% == "N" cls && goto :tempcacheprefetch
if %con% == "no" cls && goto :tempcacheprefetch
if %con% == "No" cls && goto :tempcacheprefetch
if %con% == "NO" cls && goto :tempcacheprefetch

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