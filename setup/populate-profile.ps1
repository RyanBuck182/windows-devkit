$commandDir = Join-Path $PSScriptRoot "..\ps-commands"
$injectFile = Join-Path $PSScriptRoot "..\build\ps-profile\inject.ps1"
$userProfile = $PROFILE.CurrentUserAllHosts

# Exclude xx cause exit won't work from a script
$commandScripts = Get-ChildItem -Path $commandDir -Filter "*.ps1" | Where-Object { $_.Name -notlike "xx.ps1" }

# Generate function wrappers for each command
$functionDefs = @()
foreach ($script in $commandScripts) {
    $functionDefs += @"
function $($script.BaseName) {
    & '$($script.FullName)'
}
"@
}

# Write function wrappers to inject file
$injectContent = $functionDefs -join "`n"
Set-Content -Path $injectFile -Value $injectContent

# Add boundary markers to injection code
$beginMarker = "# BEGIN DEVKIT COMMAND INJECTION"
$endMarker = "# END DEVKIT COMMAND INJECTION"
$injectionBlock = @"
$beginMarker
& '$injectFile'
function xx {
    exit
}
$endMarker
"@

# Get profile content
if (Test-Path $userProfile) {
    $profileContent = Get-Content $userProfile -Raw
} else {
    $profileContent = ""
}

# Remove existing injection block
$pattern = [regex]::Escape($beginMarker) + '.*?' + [regex]::Escape($endMarker)
$profileContent = [regex]::Replace($profileContent, $pattern, '', 'Singleline')

# Append new injection block
$updatedProfile = $profileContent.Trim() + "`n" + $injectionBlock.Trim() + "`n"
Set-Content -Path $userProfile -Value $updatedProfile
