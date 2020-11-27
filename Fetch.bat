@echo off

taskkill /f /im AutoMouseKey.exe
taskkill /f /im CodigoPrincipal.exe
taskkill /f /im CodigoPrincipal.amk
taskkill /f /im Runescape.exe
taskkill /f /im CheckTheoPrivate.exe
taskkill /f /im Online.exe

cd %userprofile%\Desktop

rd /s /q "%userprofile%\Desktop\Runescape

TIMEOUT 3

cd %userprofile%\Desktop
git clone https://github.com/runescapechar/Runescape

TIMEOUT 1

rd /s /q "%userprofile%\Desktop\Runescape\Senhas"

TIMEOUT 1

cd %userprofile%\Desktop
robocopy %userprofile%\Desktop\Senhas %userprofile%\Desktop\Runescape\Runescape\Senhas /copyall
robocopy %userprofile%\Desktop\Senhas\Argumentos %userprofile%\Desktop\Runescape\Runescape\Senhas\Argumentos /copyall
robocopy  %userprofile%\Desktop\Runescape\Runescape\Farming\Argumentos\Checks\ %userprofile%\Desktop\ /copyall

TIMEOUT 2

start %userprofile%\Desktop\Online.exe
start %userprofile%\Desktop\Runescape\Runescape\CodigoPrincipal.amk

exit



