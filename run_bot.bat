@echo off
setlocal
echo ==========================================
echo      Riot Scout Bot - Launcher
echo ==========================================

REM 1. Check Java
echo [Checking Java]
java -version
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Java is not installed or not in your PATH.
    echo Please install JDK 21+ from https://adoptium.net/
    pause
    exit /b
)

REM 2. Setup Local Maven
set "PROJECT_DIR=%~dp0"
set "MAVEN_BIN=%PROJECT_DIR%tools\apache-maven-3.9.6\bin"
echo.
echo [Using Local Maven]
echo Path: %MAVEN_BIN%
set "PATH=%MAVEN_BIN%;%PATH%"

REM 3. Run Bot
echo.
echo [Starting Application...]
echo Run command: mvn spring-boot:run
echo.
call mvn spring-boot:run

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] The bot failed to start.
    echo Read the error messages above.
    pause
)
endlocal
