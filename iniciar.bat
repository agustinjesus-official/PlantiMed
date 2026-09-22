@echo off
title PlantiMED - Servidor Local
color 0A
echo ========================================================
echo             PLANTIMED - BIOMECANICA 3D
echo             Servidor Local y Entorno Web
echo ========================================================
echo.
echo [i] Levantando servidor en http://localhost:3000 ...
echo [i] Abriendo navegador predeterminado...
echo [i] Presiona CTRL + C en esta ventana para detener.
echo.

:: Abrir navegador en http://localhost:3000
start "" "http://localhost:3000"

:: Iniciar servidor HTTP en el puerto 3000 con Python o fallback a Node
python -m http.server 3000
if errorlevel 1 (
    echo.
    echo [!] Puerto 3000 ocupado o Python ausente. Probando con npx serve...
    call npx.cmd serve -l 3000 .
)

pause
