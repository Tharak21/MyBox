@echo off
cd /d "%~dp0"
echo ==========================================
echo Starting CinéArchive Backend Server (Windows)
echo ==========================================

echo Compiling Java Backend Server...
javac -cp "lib/*;." Server.java
if %errorlevel% neq 0 (
    echo [ERROR] Compilation failed!
    echo Please make sure Java JDK is installed and 'javac' is in your PATH.
    pause
    exit /b %errorlevel%
)

echo [SUCCESS] Compilation complete.
echo Starting Server on http://localhost:8080 ...
java -cp "lib/*;." Server
pause
