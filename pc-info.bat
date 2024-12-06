@echo off
title PC-Informationen und IP-Adressen
color 00
echo ======================================
echo      PC-Informationen by Flyrora 
echo ======================================

echo Computername: %COMPUTERNAME%
echo Benutzername: %USERNAME%
echo.

echo Betriebssystemdetails:
systeminfo | findstr /B /C:"Betriebssystemname" /C:"Betriebssystemversion"
echo.

echo Prozessor und Arbeitsspeicher:
wmic cpu get name
wmic memorychip get capacity
echo.

echo Festplatteninformationen:
wmic logicaldisk get name,filesystem,freespace,size
echo.

echo IP-Adressen:
ipconfig | findstr /C:"IPv4" /C:"IPv6"
echo.

echo Netzwerkadapterstatus:
wmic nic get name,netconnectionstatus | findstr /C:"Connected" /C:"Verbunden"
echo.

Ping anzeigen
echo Aktueller Ping:
ping 8.8.8.8 -n 1 | findstr "Antwort" || echo Internet nicht erreichbar.
echo.

timeout /t 10 >nul

pause
