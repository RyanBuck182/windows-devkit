@echo off
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser" -NoProfile
powershell -ExecutionPolicy Bypass -File "%~dp0resources\setup\setup.ps1" -NoProfile %*
