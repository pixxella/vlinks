@echo off
setlocal

cd /d "%~dp0"

:parse
if "%~1"=="" goto :default_commit
if "%~1"=="-c" goto :set_commit
if "%~1"=="--commit" goto :set_commit
shift
goto :parse

:set_commit
set "COMMIT_MSG=%~2"
shift
shift
goto :parse

:default_commit
if "%COMMIT_MSG%"=="" set "COMMIT_MSG=Auto-commit: %date% %time%"

echo Adding files...
git add . || (echo Failed to add files & exit /b 1)

echo Committing with message: "%COMMIT_MSG%"
git commit -m "%COMMIT_MSG%" || (echo Nothing to commit & goto :done)

echo Pushing...
git push origin master || (echo Failed to push & exit /b 1)

:done
echo Done! Waiting 30 seconds...
timeout /t 30 >nul
:: wow
