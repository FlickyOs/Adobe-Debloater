@echo off
color F0
title Adobe Debloater by Flicky
mode con: cols=92 lines=21
setlocal enabledelayedexpansion

:main
cls && echo [30mThis utility allows you to choose what you want to remove.
echo.
echo [30m[1] [31mDebloat
echo.
echo [30m[2] [36mCredits[30m!
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls & echo debloat & goto Credits
if errorlevel 1 cls & echo Credits & goto debloat

:debloat
cls && echo [36mDelete [30mthe CameraProfiles folder?
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto CameraProfiles
if errorlevel 1 cls && goto debloat2

:CameraProfiles
RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles\Adobe Standard" > NUL 2>&1
RD /S /Q "C:\ProgramData\Adobe\CameraRaw\CameraProfiles" > NUL 2>&1
RD /S /Q "C:\ProgramData\Adobe\CameraRaw\Settings\Adobe\Profiles\Camera" > NUL 2>&1
goto debloat2

:debloat2
cls && echo [36mDelete [30mthe LensProfiles folder?
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto LensProfiles
if errorlevel 1 cls && goto debloat3

:LensProfiles
Del /s /f /q "C:\ProgramData\Adobe\CameraRaw\LensProfiles\Index.dat" > NUL 2>&1
RD /S /Q "C:\ProgramData\Adobe\CameraRaw\LensProfiles" > NUL 2>&1
goto debloat3

:debloat3
cls && echo [36mRemove [30mAll Adobe Tutorials?
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto Tutorials
if errorlevel 1 cls && goto debloat4

:Tutorials
RD /S /Q "C:\Users\Public\Documents\Adobe" > NUL 2>&1
goto debloat4

:debloat4
cls && echo [36mRemove [30mMedia Cache Files? (Recommended)
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto MediaCache
if errorlevel 1 cls && goto debloat5

:MediaCache
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\CRLogs" > Nul 2>&1
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache" > Nul 2>&1
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Media Cache Files" > Nul 2>&1
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Peak Files" > Nul 2>&1
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Team Projects Cache" > Nul 2>&1
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Team Projects Local Hub" > Nul 2>&1
rd /S /Q "C:\Users\%username%\Creative Cloud Files" > Nul 2>&1
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\CameraRaw\Logs" > Nul 2>&1
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Adobe PDF" > Nul 2>&1
rd /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Team Projects Local Hub" > Nul 2>&1
goto debloat5

:debloat5
cls && echo [36mRemove [30mMotion Graphics Templates?
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto MotionGraphicsTemplates
if errorlevel 1 cls && goto debloat6

:MotionGraphicsTemplates
RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Captions and Subtitles" > NUL 2>&1
RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\Credits" > NUL 2>&1
RD /S /Q "C:\Users\%username%\AppData\Roaming\Adobe\Common\Motion Graphics Templates\[AE] News Package" > NUL 2>&1
goto debloat6

:debloat6
cls && echo [36mRemove [30mAuto Saves And Video Previews? (Not Recommended)
echo.
echo [30m[1] [31mNo
echo.
echo [30m[2] [32mYes
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto AutoSavesAndVideoPreviews
if errorlevel 1 cls && echo Your Adobe products are now debloated! && timeout 3 > Nul && goto main

:AutoSavesAndVideoPreviews
del /s /f /q c:\windows\temp\*.*  > Nul 2>&1
del /s /f /q %temp%\*.* > Nul 2>&1
del /s /f /q c:\WINDOWS\Prefetch\*.*  > Nul 2>&1
rd /s /q "C:\Windows\Prefetch" > Nul 2>&1
rd /s /q %temp% > Nul 2>&1
rd /s /q "C:\Windows\Temp" > Nul 2>&1
md "C:\Windows\Temp" > Nul 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\13.0\Adobe Premiere Pro Auto-Save" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\13.0\Adobe Premiere Pro Video Previews" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Auto-Save" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\14.0\Adobe Premiere Pro Video Previews" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\15.0\Adobe Premiere Pro Auto-Save" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\15.0\Adobe Premiere Pro Video Previews" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\16.0\Adobe Premiere Pro Auto-Save" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\16.0\Adobe Premiere Pro Video Previews" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\17.0\Adobe Premiere Pro Auto-Save" > NUL 2>&1
RD /S /Q "C:\Users\%username%\Documents\Adobe\Premiere Pro\17.0\Adobe Premiere Pro Video Previews" > NUL 2>&1
cls && echo Your Adobe products are now debloated! && timeout 3 > Nul 2>&1
goto main

:Credits
cls && echo [30mCanonez.
echo [30mPhlegm.
echo [30mRevisitable.
echo [36mTwitter [30m:([36mTwitter.com[30m/Flicky_VFX).
echo.
echo [30m[1] [36mMain
echo.
echo [30m[2] [31mExit
echo.
choice /c:12 /n > NUL 2>&1
if errorlevel 2 cls && goto exit
if errorlevel 1 cls && goto main