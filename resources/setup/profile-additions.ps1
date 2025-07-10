# The output of this script gets added to the powershell profile on setup

$xx = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\xx.ps1") -Raw
$prompt = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\prompt.ps1") -Raw

Write-Output $xx
Write-Output $prompt
