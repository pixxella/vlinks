@echo off
setlocal

cd /d "%~dp0"

:: force checkout to dev
git checkout dev
if %errorlevel% neq 0 (
    echo failed to switch to dev branch. fix your untracked files!
    exit /b 1
)

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
if "%COMMIT_MSG%"=="" set "COMMIT_MSG=auto-commit: %date% %time%"

echo adding files...
git add .
if %errorlevel% neq 0 (
    echo failed to add files
    exit /b 1
)

echo committing with message: "%COMMIT_MSG%"
git commit -m "%COMMIT_MSG%"
if %errorlevel% neq 0 (
    echo nothing to commit or error occurred
    goto :done
)

echo pushing to dev...
git push --set-upstream origin dev
if %errorlevel% neq 0 (
    echo failed to push
    exit /b 1
)

echo switching back to master...
git checkout master
if %errorlevel% neq 0 (
    echo failed to switch back to master branch
)

:done
echo done! waiting 30 seconds...
timeout /t 30 >nul
exit /b 0
:: wow