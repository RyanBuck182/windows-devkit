$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$commandsDir = Join-Path $scriptDir "commands"
$currentPATH = [Environment]::GetEnvironmentVariable("PATH", "User")

# Add the commands to the PATH environment variable
if ($currentPATH.Split(';') -contains $commandsDir) {
    Write-Host "'$commandsDir' is already in PATH."
} else {
    $newPATH = "$currentPATH;$commandsDir"
    [Environment]::SetEnvironmentVariable("PATH", $newPATH, "User")
    Write-Host "Added '$commandsDir' to PATH."
}

# Add the xx command for powershell (the batch file only works in cmd prompt)
$xxFunc = 'function xx { exit }'

if (-not (Test-Path $PROFILE)) {
    New-Item -ItemType Directory -Path (Split-Path $PROFILE) -Force | Out-Null
    New-Item -ItemType File -Path $PROFILE -Force | Out-Null
}

if (-not (Get-Content $PROFILE | Select-String -Pattern 'function xx')) {
    Add-Content $PROFILE "`n$xxFunc`n"
}
