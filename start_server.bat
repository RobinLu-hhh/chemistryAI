@echo off
title ChemAI Server - localhost:8000
cd /d "%~dp0"
echo ========================================
echo    ChemAI Server Starting...
echo    Backend: http://localhost:8000
echo    Docs:   http://localhost:8000/docs
echo    Press Ctrl+C to stop
echo ========================================
python -m uvicorn app.main:app --host 127.0.0.1 --port 8000
pause
