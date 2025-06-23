# Open the devkit in file explorer

$devkitPath = (Get-Item $PSScriptRoot).Parent

Start-Process $devkitPath
