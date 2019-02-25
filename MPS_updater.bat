@echo off
mode con:cols=80 lines=10
title Server Updater

rem set homepath 
set mypath=%cd%

rem import config
< updater.cfg (
  set /p line1=
  set /p Link_MPS=
  set /p line3=
  set /p line4=
  set /p Link_TitlePack=
  set /p line6=
  set /p line7=
  set /p Title_Name=
)
pause
rem downloading MPS
bitsadmin.exe /transfer "Download Latest ManiaPlanetServer.zip" %Link_MPS% %mypath%\ManiaplanetServer_Latest.zip

rem extrackt ManiaPlanetServer_Latest.zip
powershell.exe -nologo -noprofile -command "& { $shell = New-Object -COM Shell.Application; $target = $shell.NameSpace('%mypath%'); $zip = $shell.NameSpace('%mypath%\ManiaplanetServer_Latest.zip'); $target.CopyHere($zip.Items(), 16); }"

rem check if folder Packs exists
:again
if exist "%mypath%\Packs" goto download_title
	echo "\Packs" dident Exist !
	echo I will try again, pls wait !
	timeout /t 5 /nobreak
	goto again
:download_title
rem download TitlePack
bitsadmin.exe /transfer "Download Latest TitlePack" %Link_TitlePack%%Title_Name% %mypath%\Packs\%Title_Name%


rem REMOVE THIS IF YOU WANT TO CLOSE MPS_UPDATER AUTOMATICLY !!!
echo Update Finished !
pause
