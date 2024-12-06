@echo off
title Discord Installer
color 00
echo ======================================
echo          Discord Installer
echo ======================================

REM
set DISCORD_URL=https://discord.com/api/download/stable?platform=win

REM
set DOWNLOAD_PATH=%TEMP%\DiscordSetup.exe

REM
echo Überprüfen, ob Discord bereits installiert ist...
if exist "%LOCALAPPDATA%\Discord" (
    echo Discord ist bereits installiert.
    echo Beenden des Installationsskripts.
    pause
    exit
)

REM
echo Herunterladen der Discord-Installationsdatei...
bitsadmin /transfer DiscordDownload /download /priority normal "%DISCORD_URL%" "%DOWNLOAD_PATH%"

if exist "%DOWNLOAD_PATH%" (
    echo Download erfolgreich! Starte die Installation...
    start /wait "" "%DOWNLOAD_PATH%" /SILENT
    echo Discord wurde erfolgreich installiert!
    echo.
    echo Du findest Discord im Startmenü oder unter: %LOCALAPPDATA%\Discord
) else (
    echo Fehler: Die Installationsdatei konnte nicht heruntergeladen werden.
    echo Überprüfe deine Internetverbindung oder die Download-URL.
)

REM
if exist "%DOWNLOAD_PATH%" del "%DOWNLOAD_PATH%"

pause
exit
