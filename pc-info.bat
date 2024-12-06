@echo off
title PC-Informationen und IP-Adressen
color 00
echo ======================================
echo      PC-Informationen by Flyrora 
echo ======================================

REM
echo Computername: %COMPUTERNAME%
echo Benutzername: %USERNAME%
echo.

REM
echo Betriebssystemdetails:
systeminfo | findstr /B /C:"Betriebssystemname" /C:"Betriebssystemversion"
echo.

REM
echo Prozessor und Arbeitsspeicher:
wmic cpu get name
wmic memorychip get capacity
echo.

REM
echo Festplatteninformationen:
wmic logicaldisk get name,filesystem,freespace,size
echo.

REM
echo IP-Adressen:
ipconfig | findstr /C:"IPv4" /C:"IPv6"
echo.

REM
echo Netzwerkadapterstatus:
wmic nic get name,netconnectionstatus | findstr /C:"Connected" /C:"Verbunden"
echo.

REM
echo Betriebszeit des PCs:
for /f "tokens=1-4 delims=," %%a in ('net statistics workstation ^| find "since"') do echo %%a %%b %%c %%d
echo.

REM
echo Akkustand:
wmic path win32_battery get estimatedchargeremaining || echo Kein Akku gefunden oder Desktop-PC.
echo.

REM
echo Aktueller Ping:
ping 8.8.8.8 -n 1 | findstr "Antwort" || echo Internet nicht erreichbar.
echo.

timeout /t 10 >nul

pause
