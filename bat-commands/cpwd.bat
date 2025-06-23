:: Copy the path to the working directory to the clipboard
:: It will be surrounded in quotes

@echo off

powershell -NoProfile -Command "('\"' + (Get-Location).Path + '\"') | Set-Clipboard"
