# 경영기획팀 업무보고 시스템 시작 스크립트
# PowerShell에서 실행: powershell -ExecutionPolicy Bypass -File START.ps1

$ErrorActionPreference = "Continue"
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "`n" -ForegroundColor Green
Write-Host "📊 경영기획팀 업무보고 시스템 시작" -ForegroundColor Green
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Green
Write-Host "`n"

# Python 버전 확인
$pythonVersion = python --version 2>&1
if ($?) {
    Write-Host "✅ Python 설치됨: $pythonVersion" -ForegroundColor Green
    Write-Host "`n"
} else {
    Write-Host "❌ Python이 설치되지 않았습니다." -ForegroundColor Red
    Write-Host "   Windows Python을 설치하세요: https://www.python.org/downloads/" -ForegroundColor Yellow
    Write-Host "`n"
    Read-Host "Enter를 누르면 종료됩니다"
    exit 1
}

Write-Host "🚀 HTTP 서버 실행 중..." -ForegroundColor Cyan
Write-Host "`n"
Write-Host "📍 다음 주소를 Chrome/Edge에서 열어주세요:" -ForegroundColor White
Write-Host "   🔗 http://localhost:8000" -ForegroundColor Cyan
Write-Host "`n"
Write-Host "💡 팁:" -ForegroundColor Yellow
Write-Host "   - 이 창을 닫으면 서버가 중단됩니다" -ForegroundColor DarkGray
Write-Host "   - 브라우저에서 F5를 눌러 새로고침 가능" -ForegroundColor DarkGray
Write-Host "   - 공유폴더 연결이 정상 작동합니다" -ForegroundColor DarkGray
Write-Host "`n"
Write-Host "⏳ 서버 시작 중..." -ForegroundColor Green
Write-Host "`n"

Set-Location $scriptPath
python -m http.server 8000

Write-Host "`n❌ 서버가 중단되었습니다." -ForegroundColor Red
Read-Host "Enter를 누르면 종료됩니다"
