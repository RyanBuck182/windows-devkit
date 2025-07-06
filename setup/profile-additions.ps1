# The output of this script gets added to the powershell profile on setup

$xxfunc = @"
function xx {
    exit
}
"@

Write-Output $xxfunc
