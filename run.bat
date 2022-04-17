@echo off
setlocal enabledelayedexpansion
echo %0
echo %1
set a=%1\wat
set b=%~dp0rc
echo %a%
echo %b%
echo nul>%a%
echo Please check if this is where you expected.(string before"\wat")
pause
:loop
if exist %a% (
echo exist
goto loop
) else (
echo no
:ck
if exist %1 (
xcopy /Y /F %b%\*.* %1\*.*
) else (
goto ck
)
)
set /a cnt=0
:loop2
FOR %%i IN (%b%\*.jar) do (
if exist %1\%%~nxi (
echo Exist %%~nxi
) else (
xcopy /Y /F %b%\*.jar %1\*.jar
)
)
set /a cnt=!cnt!+1
echo !cnt!
if !cnt! LSS 20 (
goto loop2
) else (
echo end check
)
echo "end"
