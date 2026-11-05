@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  echo Opening Guitar Master preview at http://localhost:8000
  start "" http://localhost:8000
  py -m http.server 8000
  goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
  echo Opening Guitar Master preview at http://localhost:8000
  start "" http://localhost:8000
  python -m http.server 8000
  goto :eof
)
echo Python was not found. Use OPEN_PREVIEW.bat for the visual prototype.
echo Microphone-based tuner may require HTTPS or localhost.
pause
