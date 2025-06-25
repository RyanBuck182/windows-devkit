Write-Host "Please follow the instructions in config.psd1.template"
Write-Host "Once you have done so, please press enter..."
Read-Host | Out-Null

Write-Host "Setting git config..."
& .\setup\git-config-setup.ps1

Write-Host "Adding commands to powershell profile..."
& .\setup\populate-profile.ps1

Write-Host "Generating batch wrappers..."
& .\setup\generate-wrappers.ps1

Write-Host "Adding batch wrappers to the PATH environment variable..."
& .\setup\add-wrappers-to-path.ps1
