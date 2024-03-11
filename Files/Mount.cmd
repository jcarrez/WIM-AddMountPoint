@echo off

set "DOMAIN="
set "USER="
set "PASS="
set "SERV="
set "SHARE="

for /f "tokens=1* delims==" %%A in ('type %SYSTEMROOT%\System32\credentials.ini') do (
	if "%%A"=="DOMAIN" set "DOMAIN=%%B"
	if "%%A"=="USER" set "USER=%%B"
	if "%%A"=="PASS" set "PASS=%%B"
	if "%%A"=="SERV" set "SERV=%%B"
	if "%%A"=="SHARE" set "SHARE=%%B"
)


:A
net use A: \\%SERV%\%SHARE% /USER:%DOMAIN%\%USER% %PASS% /PERSISTENT:YES
if %ERRORLEVEL% equ 0 (
	goto END
)
ping 127.0.0.1 -n 5 
goto A

:END