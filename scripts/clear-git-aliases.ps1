# Remove all git aliases from global config

$aliases = git config --global --get-regexp '^alias\.' 2>$null

if ($aliases) {
    foreach ($line in $aliases) {
        $alias = ($line -split '\s+')[0]
        git config --global --unset $alias
        Write-Host "Removed alias: $alias"
    }
}
