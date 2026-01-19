@echo off
echo ====================================
echo Iniciando Traductor Automatico
echo ====================================
echo.

REM Configurar variable de entorno para CORS
set OLLAMA_ORIGINS=*

REM Iniciar Ollama en una nueva ventana
echo [1/2] Iniciando Ollama...
start "Ollama Server" cmd /k "set OLLAMA_ORIGINS=* && ollama serve"
timeout /t 3 /nobreak >nul

REM Iniciar servidor web Python en una nueva ventana
echo [2/2] Iniciando servidor web en puerto 8080...
start "Servidor Web" cmd /k "python -m http.server 8080"
timeout /t 2 /nobreak >nul

echo.
echo ====================================
echo Servicios iniciados correctamente!
echo ====================================
echo.
echo Ollama:       http://localhost:11434
echo Sitio Web:    http://localhost:8080
echo.
echo Abre tu navegador en: http://localhost:8080
echo.
echo Presiona cualquier tecla para salir...
pause >nul
