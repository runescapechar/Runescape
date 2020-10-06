@echo off

taskkill /f /im AutoMouseKey.exe
taskkill /f /im CodigoPrincipal.exe
taskkill /f /im Runescape.exe
taskkill /f /im CheckTheoPrivate.exe
      
cd %userprofile%\Desktop

rd /s /q "%userprofile%\Desktop\RuneSeibelBot"

TIMEOUT 1

git clone https://github.com/runescapechar/RuneSeibelBot

TIMEOUT 1

cd %userprofile%\Desktop\RuneSeibelBot\Runescape 3
xcopy "CodigoPrincipal.exe" "%userprofile%\Desktop\Senhas" /c /d /i /y
cd %userprofile%\Desktop\RuneSeibelBot\Runescape 3\Argumentos
xcopy "CheckTheoPrivate.exe" "%userprofile%\Desktop\Senhas" /c /d /i /y

TIMEOUT 1

cd %userprofile%\Desktop\Senhas\Argumentos
start CheckTheoPrivate.exe
cd %userprofile%\Desktop\Senhas
start CodigoPrincipal.exe

exit



