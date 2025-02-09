@echo off >nul
chcp 65001 >nul

:banner
echo.
echo.
echo			▓█████▄ ▓█████▄▄▄█████▓▓█████  ███▄    █ ▄▄▄█████▓ ██▓ ▒█████   ███▄    █ 
echo			▒██▀ ██▌▓█   ▀▓  ██▒ ▓▒▓█   ▀  ██ ▀█   █ ▓  ██▒ ▓▒▓██▒▒██▒  ██▒ ██ ▀█   █ 
echo			░██   █▌▒███  ▒ ▓██░ ▒░▒███   ▓██  ▀█ ██▒▒ ▓██░ ▒░▒██▒▒██░  ██▒▓██  ▀█ ██▒
echo			░▓█▄   ▌▒▓█  ▄░ ▓██▓ ░ ▒▓█  ▄ ▓██▒  ▐▌██▒░ ▓██▓ ░ ░██░▒██   ██░▓██▒  ▐▌██▒
echo			░▒████▓ ░▒████▒ ▒██▒ ░ ░▒████▒▒██░   ▓██░  ▒██▒ ░ ░██░░ ████▓▒░▒██░   ▓██░
echo			 ▒▒▓  ▒ ░░ ▒░ ░ ▒ ░░   ░░ ▒░ ░░ ▒░   ▒ ▒   ▒ ░░   ░▓  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ 
echo			 ░ ▒  ▒  ░ ░  ░   ░     ░ ░  ░░ ░░   ░ ▒░    ░     ▒ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░
echo			 ░ ░  ░    ░    ░         ░      ░   ░ ░   ░       ▒ ░░ ░ ░ ▒     ░   ░ ░ 
echo			   ░       ░  ░           ░  ░         ░           ░      ░ ░           ░ 
echo.
echo.
color a
echo			1.Wifi Show Passwords
echo			2.Token Grabber(firstpart, bruteforce comming soon)
echo.
echo.
goto choice

:choice
set /p choice="Chose between the available: "
if /i "%choice%"=="1" goto Wifi Show
if /i "%choice%"=="2" goto grabber






:Wifi Show
python Wifi.py
goto loop

:grabber
python FirstPartToken.py
goto loop




:loop
echo Do u want to continue? (y/n)
set "input="
set /p input=Input: 

if /i "%input%"=="n" (
    echo Exiting...
    exit /b
) else (
    cls
    goto banner
)

