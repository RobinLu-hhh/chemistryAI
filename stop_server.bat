@echo off
title ChemAI Server — Stopping...
echo Killing python processes on port 8000...

for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8000 "') do (
    taskkill /PID %%a /F 2>nul
)

taskkill /F /IM python.exe 2>nul
taskkill /F /IM uvicorn.exe 2>nul

echo.
echo Done. Server stopped.
pause
