@echo off
chcp 65001 > nul
title AI Video Maker 구동기
echo ========================================================
echo               AI Video Maker 실행 도우미
echo ========================================================
echo.

:: Python 설치 확인
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [정보] 파이썬 환경이 감지되었습니다!
    echo [정보] 로컬 HTTP 서버 (http://localhost:8000)를 실행합니다.
    echo.
    echo 이 창을 닫으면 서버가 종료됩니다.
    echo.
    start "" "http://localhost:8000"
    python -m http.server 8000
) else (
    echo [정보] 파이썬 설치가 감지되지 않았습니다.
    echo [정보] index.html 파일을 브라우저로 직접 실행합니다.
    echo.
    start "" "index.html"
)
pause
