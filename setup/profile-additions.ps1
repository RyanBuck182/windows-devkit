# The output of this script gets added to the powershell profile on setup

$xxfunc = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\xxfunc.ps1")

Write-Output $xxfunc
