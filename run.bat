rem   Copyright 2022 LiuJiewenTT

rem   Licensed under the Apache License, Version 2.0 (the "License");
rem   you may not use this file except in compliance with the License.
rem   You may obtain a copy of the License at

rem       http://www.apache.org/licenses/LICENSE-2.0

rem   Unless required by applicable law or agreed to in writing, software
rem   distributed under the License is distributed on an "AS IS" BASIS,
rem   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem   See the License for the specific language governing permissions and
rem   limitations under the License.




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
