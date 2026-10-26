@echo off
rem ============================================================
rem  publish.bat - one-click publish blog posts
rem  Usage:
rem    double-click            -> auto commit message (timestamp)
rem    publish.bat "my msg"    -> custom commit message
rem ============================================================
cd /d D:\Blog

git add -A
git diff --cached --quiet
if %errorlevel%==0 (
    echo [!] No changes to publish.
    pause
    exit /b 0
)

set "MSG=%~1"
if "%MSG%"=="" set "MSG=post update %date% %time%"

git commit -m "%MSG%"

git push
if not %errorlevel%==0 (
    echo [*] Retrying via proxy...
    git -c http.proxy=http://127.0.0.1:7897 -c https.proxy=http://127.0.0.1:7897 push
)

echo.
echo [OK] Pushed. Site updates in 1-2 minutes: https://simp1est.github.io
pause
