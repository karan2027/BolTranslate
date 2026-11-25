@echo off
title BolTranslate - Local Server
echo ========================================================
echo        Starting BolTranslate on http://localhost:3000
echo   (Enables 100%% Microphone & Speech Recognition Support)
echo ========================================================
echo.
start http://localhost:3000
python -m http.server 3000
pause
