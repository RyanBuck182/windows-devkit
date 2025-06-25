$batWrapperDir = Join-Path $PSScriptRoot ".\bat-commands"
$currentPATH = [Environment]::GetEnvironmentVariable("PATH", "User")

if ($currentPATH.Split(';') -notcontains $batWrapperDir) {
    $newPATH = "$currentPATH;$batWrapperDir"
    [Environment]::SetEnvironmentVariable("PATH", $newPATH, "User")
}
