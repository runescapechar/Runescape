@echo off

taskkill /f /im AutoMouseKey.exe
taskkill /f /im CodigoPrincipal.exe
taskkill /f /im CodigoPrincipal.amk
taskkill /f /im Runescape.exe
taskkill /f /im CheckTheoPrivate.exe
      
cd %userprofile%\Desktop

rd /s /q "%userprofile%\Desktop\Runescape

TIMEOUT 1
cd %userprofile%\Desktop
git clone https://github.com/runescapechar/Runescape

TIMEOUT 1

rd /s /q "%userprofile%\Desktop\Runescape\Senhas"

TIMEOUT 1

cd %userprofile%\Desktop
robocopy %userprofile%\Desktop\Senhas %userprofile%\Desktop\Runescape\Runescape\Senhas /copyall

start %userprofile%\Desktop\Runescape\Runescape\Farming\Argumentos\CheckTheoPrivate.exe
TIMEOUT 1
start %userprofile%\Desktop\Runescape\Runescape\CodigoPrincipal.amk

exit



