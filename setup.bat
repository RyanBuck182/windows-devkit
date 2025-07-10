@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0resources\setup\setup.ps1" -NoProfile %*
