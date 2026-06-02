@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ========================================
echo   钢琴音符小课堂 - 手机练习服务器
echo ========================================
echo.
echo 1. 确保手机和电脑连接同一个 WiFi
echo 2. 在手机浏览器输入下面地址（把 IP 换成你电脑的）:
echo.
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do (
  set "_ip=%%a"
  goto :show
)
:show
if defined _ip (
  for /f "tokens=* delims= " %%b in ("%_ip%") do echo    http://%%b:8080
) else (
  echo    http://你的电脑IP:8080
  echo    （在 cmd 输入 ipconfig 查看 IPv4 地址）
)
echo.
echo 按 Ctrl+C 可停止服务器
echo ========================================
echo.

python -m http.server 8080 2>nul
if errorlevel 1 (
  echo 未找到 Python，尝试 py 启动...
  py -m http.server 8080
)
