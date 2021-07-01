echo off
color F0
title Adobe Debloater
mode con: cols=92 lines=21

setlocal enabledelayedexpansion
for /f "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "del=%%a"
)

cls
call :colortext F0 "This script was made by" 
call :colortext F5 " Flicky" && echo.
timeout 3 > nul
echo.
echo This Script/Utility/Application to debloat Adobe Programs.
echo.
echo It removes Adobe pre-installed unnecessary Stuff like:CameraProfiles,LensProfiles,Cache and ETC.
timeout 7 > nul

:main
cls
echo Credits to:(canonez,Phlegm)
echo.
echo (Twitter.com/Flicky_VFX)
echo.
call :colortext F0 "This script will allow you to choose what you want to remove." && echo .
echo Keep in mind that its not REVERSIBLE,Are you sure you want to continue?
echo.
set /p con=
if /i "%con%" == "no" cls && echo Exiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit
if /i "%con%" == "yes" (
       goto debloat
) else (
     cls && echo Misspell detected.
     timeout 2 >nul
     cls && echo Returning. && timeout 1 >nul && cls && echo Returning.. && timeout 1 >nul && cls && echo Returning... && timeout 1 >nul && cls
     goto :main
)

:debloat
cls
call :colortext F5 "Remove" && echo  CameraProfiles? (Useless)
set /p con= 
if /i "%con%" == "yes" goto :CameraProfiles
if /i "%con%" == "no" ^ && cls

:CameraProfiles
Del /s /f /q C:\ProgramData\Adobe\CameraRaw\CameraProfiles
@RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles

cls && cls
call :colortext F5 "Remove" && echo  LensProfiles? (Useless)
set /p con= 
if /i "%con%" == "yes" goto :LensProfiles
if /i "%con%" == "no" ^ && cls

:LensProfiles
Del /s /f /q C:\ProgramData\Adobe\CameraRaw\LensProfiles
@RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles

cls && cls
call :colortext F5 "Remove" && echo  All Adobe Tutorials?
set /p con= 
if /i "%con%" == "yes" goto :Adobe Tutorials
if /i "%con%" == "no" ^ && cls

:Adobe Tutorials
Del /s /f /q C:\Users\Public\Documents\Adobe
@RD /S /Q "C:\Users\Public\Documents\Adobe

cls && cls
call :colortext F5 "Remove" && echo  Media Cache Files? (Adobe Cache)
set /p con=
if /i "%con%" == "yes" goto :Media Cache Files
if /i "%con%" == "no" ^ && cls

:Media Cache Files
Del /s /f /q C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files
@RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files
Del /s /f /q C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache
@RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache

cls && cls
call :colortext F5 "Remove" && echo  Adobe Temp Cache And Prefetch?
set /p con= 
if /i "%con%" == "yes" goto :delete
if /i "%con%" == "no" ^ && cls

:delete
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%

:exit
cls && cls
call :colortext F0 "Your Adobe Products is now " && call :colortext F6 " debloated" && echo. && timeout 2 > nul
cls && echo Exiting. && timeout 1 >nul && cls && echo Exiting.. && timeout 1 >nul && cls && echo Exiting... && timeout 1 >nul && cls && exit


:colortext
echo off
<nul set /p ".=%del%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1