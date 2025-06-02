:: Split the current windows terminal tab into three separate powershell instances.

@echo off
wt --window last sp --profile "Windows Powershell" %* -V
wt --window last sp --profile "Windows Powershell" %* -H
