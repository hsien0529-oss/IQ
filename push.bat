@echo off
chcp 65001 >nul
echo ========================================
echo VEX IQ Trip Itinerary - GitHub 自動推送工具
echo ========================================
echo.

echo [1/3] 正在檢查變更並加入追蹤...
git add -A
echo 完成.
echo.

echo [2/3] 請輸入更新說明 (Commit Message):
set /p commitMsg="> "
if "%commitMsg%"=="" set commitMsg=Update itinerary

echo.
echo 正在建立提交紀錄...
git commit -m "%commitMsg%"
echo 完成.
echo.

echo [3/3] 正在推送到 GitHub...
git push origin main
echo.

if %errorlevel% equ 0 (
    echo ========================================
    echo ✅ 推送成功！你的網頁變更已上傳到 GitHub。
    echo ========================================
) else (
    echo ========================================
    echo ❌ 推送失敗，請檢查網路連線或授權狀態。
    echo ========================================
)

echo.
pause
