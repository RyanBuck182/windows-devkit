:: Open a new powershell tab in the current windows terminal window.
:: TODO: make it open a new tab when run in administrator window

@echo off
wt --window last nt --profile "Windows Powershell" %*
