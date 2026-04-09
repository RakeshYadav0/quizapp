@echo off
where gradle >nul 2>nul
if %ERRORLEVEL%==0 (
  gradle %*
  exit /b %ERRORLEVEL%
)

echo Gradle is not installed on PATH. Install Gradle or run via Flutter (flutter build apk).
exit /b 1
