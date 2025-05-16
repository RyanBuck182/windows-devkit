:: Copy the working directory to the clipboard
:: Surrounded in quotes

@echo off
powershell -NoProfile -Command "('\"' + (Get-Location).Path + '\"') | Set-Clipboard"
