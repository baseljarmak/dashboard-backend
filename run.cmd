@echo off
echo ========================================
echo   Dashboard Backend API
echo ========================================

python -m venv venv
call venv\Scripts\activate.bat
pip install -r requirements.txt

copy .env.example .env

uvicorn app.main:app --reload --host 0.0.0.0 --port 8000