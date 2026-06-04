@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo 📊 경영기획팀 업무보고 시스템 시작
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.
echo 🚀 HTTP 서버 실행 중...
echo.
echo 📍 다음 주소를 브라우저에서 열어주세요:
echo    http://localhost:8000
echo.
echo 💡 팁:
echo    - 이 창을 닫으면 서버가 중단됩니다
echo    - 브라우저에서 F5를 눌러 새로고침 가능
echo    - 공유폴더 연결이 정상 작동합니다
echo.
echo ⏳ 서버 시작 중...
echo.

python -m http.server 8000 --directory "%~dp0"

if errorlevel 1 (
    echo.
    echo ❌ Python이 설치되지 않았거나 경로 설정이 안 되어 있습니다.
    echo.
    echo 대안: 다음을 PowerShell에서 실행하세요
    echo cd "%~dp0"
    echo python -m http.server 8000
    echo.
    pause
)
