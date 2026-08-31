@echo off
echo ==========================================================
echo Starting Autonomous Multi-Agent DevOps Platform...
echo ==========================================================

:: Start FastAPI backend in a new window
echo Launching backend server on http://localhost:8000...
start "DevOps Platform Backend" cmd /k "cd backend && venv\Scripts\activate && uvicorn app.main:app --reload --port 8000"

:: Start React frontend in a new window
echo Launching frontend server on http://localhost:3000...
start "DevOps Platform Frontend" cmd /k "cd frontend && npm start"

echo ==========================================================
echo Both servers are launching. Feel free to close this window.
echo ==========================================================
pause
