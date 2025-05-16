@echo off
powershell -NoProfile -Command "('\"' + (Get-Location).Path + '\"') | Set-Clipboard"
