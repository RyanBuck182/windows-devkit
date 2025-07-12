$Global:ShowPromptFull = $false
$Global:ShowPromptGit = $true
$Global:ShowPromptColor = $true

function prompt {
    if ($Global:ShowPromptFull) {
        Write-Host $(Get-Location) -NoNewline
    } else {
        $leaf = Split-Path $(Get-Location) -Leaf
        $parent = Split-Path $(Get-Location) -Parent
        $parentLeaf = Split-Path $parent -Leaf
        Write-Host "$parentLeaf\$leaf" -NoNewline
    }
    
    if ($Global:ShowPromptGit) {
        try {
            $branch = git rev-parse --abbrev-ref HEAD 2>$null
            if ($LASTEXITCODE -eq 0 -and $branch -ne 'HEAD') {
                if ($Global:ShowPromptColor) {
                    Write-Host " (" -NoNewline
                    Write-Host "$branch" -ForegroundColor Cyan -NoNewline
                    Write-Host ")" -NoNewline
                } else {
                    Write-Host " ($branch)" -NoNewline
                }
            }
        } catch {}
    }
    
    return "> "
}

function Toggle-PromptFull {
    $Global:ShowPromptFull = -not $Global:ShowPromptFull
}

function Toggle-PromptGit {
    $Global:ShowPromptGit = -not $Global:ShowPromptGit
}

function Toggle-PromptColor {
    $Global:ShowPromptColor = -not $Global:ShowPromptColor
}
