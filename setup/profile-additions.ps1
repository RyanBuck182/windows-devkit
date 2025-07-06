# The output of this script gets added to the powershell profile on setup

$xxfunc = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\xxfunc.ps1") -Raw
$prompt = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\prompt.ps1") -Raw

Write-Output $xxfunc
Write-Output $prompt
