@echo off
echo ====================================
echo Iniciando Traductor con ngrok
echo ====================================
echo.

REM Configurar variable de entorno para CORS
set OLLAMA_ORIGINS=*

REM Iniciar Ollama en una nueva ventana
echo [1/3] Iniciando Ollama...
start "Ollama Server" cmd /k "set OLLAMA_ORIGINS=* && ollama serve"
timeout /t 3 /nobreak >nul

REM Iniciar servidor web Python en una nueva ventana
echo [2/3] Iniciando servidor web en puerto 8080...
start "Servidor Web" cmd /k "python -m http.server 8080"
timeout /t 2 /nobreak >nul

REM Iniciar ngrok para acceso externo
echo [3/3] Iniciando ngrok para acceso externo...
start "ngrok Web" cmd /k "ngrok http 8080"
timeout /t 2 /nobreak >nul

echo.
echo ====================================
echo Servicios iniciados correctamente!
echo ====================================
echo.
echo Ollama:        http://localhost:11434
echo Sitio Local:   http://localhost:8080
echo Sitio Publico: Revisa la ventana de ngrok
echo.
echo Presiona cualquier tecla para salir...
pause >nul
