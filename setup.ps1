# Add the commands to the PATH environment variable

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$commandsFolder = Join-Path $scriptDir "commands"

$currentPATH = [Environment]::GetEnvironmentVariable("PATH", "User")

if ($currentPATH.Split(';') -contains $commandsFolder) {
    Write-Output "'$commandsFolder' is already in PATH."
} else {
    $newPATH = "$currentPATH;$commandsFolder"
    [Environment]::SetEnvironmentVariable("PATH", $newPATH, "User")
    Write-Output "Added '$commandsFolder' to PATH."
}
