```bat
@echo off
setlocal
title My Windows Launcher by Joel

:: ==================================================
:: CONFIGURACAO DA JANELA
:: ==================================================

mode con: cols=60 lines=25
color 70

:: ==================================================
:: MENU
:: ==================================================

:MENU
cls

echo.
echo.
echo.
echo.
echo                        Quick Actions
echo.
echo.
echo                    [1]  Brave
echo                    [2]  Valorant
echo                    [3]  Summer Pockets RB
echo                    [4]  Visual Studio Code Insider *
echo                    [5]  Spotify
echo.
echo                    [0]  Sair
echo.
echo.
echo.

choice /C 123450 /N /M "                    > "

if errorlevel 6 goto SAIR
if errorlevel 5 goto SPOTIFY
if errorlevel 4 goto VSCODE
if errorlevel 3 goto SUMMERPOCKETSRB
if errorlevel 2 goto VALORANT
if errorlevel 1 goto BRAVE


:: ==================================================
:: APLICATIVOS
:: ==================================================

:BRAVE
start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
goto MENU

:VALORANT
start "" "C:\Riot Games\Riot Client\RiotClientServices.exe"
goto MENU

:SUMMERPOCKETSRB
start "" "C:\Users\Administrator\Documents\Summer Pockets REFLECTION BLUE\Summer Pockets REFLECTION BLUE\SummerPocketsRB.exe"
goto MENU

:VSCODE
start "" "C:\Program Files\Microsoft VS Code Insiders\Code - Insiders.exe"
goto MENU

:SPOTIFY
start "" "%AppData%\Spotify\Spotify.exe"
goto MENU


:: ==================================================
:: SAIR
:: ==================================================

:SAIR
exit
```
