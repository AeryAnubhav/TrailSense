@echo off
echo Starting TrailBack AI System...

echo Starting Backend Service...
start "TrailBack Backend" cmd /k "cd backend && pip install -r requirements.txt && python main.py"

echo Starting Frontend Interface...
start "TrailBack Frontend" cmd /k "cd frontend && npm run dev"

echo System Initialized.
