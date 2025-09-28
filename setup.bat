@echo off
powershell -NoProfile -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0resources\setup\setup.ps1" %*
