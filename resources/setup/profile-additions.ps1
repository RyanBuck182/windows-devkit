# The output of this script gets added to the powershell profile on setup

$xx = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\xx.ps1") -Raw
$tpx = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\tpx.ps1") -Raw
$prompt = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\prompt.ps1") -Raw
$branchComplete = Get-Content (Join-Path $PSScriptRoot ".\profile-additions\git-branch-autocomplete.ps1") -Raw

Write-Output $xx
Write-Output $tpx
Write-Output $prompt
Write-Output $branchComplete
