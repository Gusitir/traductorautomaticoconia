@echo off
echo ====================================
echo Deteniendo Servicios
echo ====================================
echo.

echo Deteniendo Ollama...
taskkill /F /IM ollama.exe >nul 2>&1

echo Deteniendo Python...
taskkill /F /IM python.exe >nul 2>&1

echo Deteniendo ngrok...
taskkill /F /IM ngrok.exe >nul 2>&1

echo.
echo ====================================
echo Todos los servicios detenidos!
echo ====================================
echo.
pause
