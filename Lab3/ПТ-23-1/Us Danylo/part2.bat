@echo off
chcp 65001 > nul


set "new_date=01.01.2024"

rem Перевірка, чи переданий параметр
if "%~1"=="" (
  set "target_directory=%cd%"
) else (
  set "target_directory=%~1"
)

rem Зміна дати та часу змінення файлів у вказаній або поточній папці
for /f "delims=" %%i in ('dir /b /a-d "%target_directory%"') do (
  echo Змінено дату та час змінення для файлу %%i
  powershell -Command "(Get-Item '%target_directory%\%%i').LastWriteTime = Get-Date '%new_date%'"
)

echo Дата та час змінення для усіх файлів у папці %target_directory% була змінена на %new_date%.

pause
exit /b 0