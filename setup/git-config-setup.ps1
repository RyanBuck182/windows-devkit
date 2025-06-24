# My preferred configuration options for git.

# -------------------------
# --------Settings---------
# -------------------------


Write-Output "Setting git config..."

# Username and email
if (Test-Path "..\config.psd1") {
    $config = Import-PowerShellDataFile -Path "config.psd1"
    git config --global user.name $config.GitUserName
    git config --global user.email $config.GitUserEmail
} else {
    Write-Output "Unable to set git username and email because config file does not exist!"
    Write-Output "Please follow the instructions in config.psd1.template!"
}

git config --global init.defaultBranch main
git config --global core.editor nano

# Prevent fastforward when pulling
git config --global pull.ff only

# https://www.ductile.systems/zdiff3/
git config --global merge.conflictstyle zdiff3

# https://luppeng.wordpress.com/2020/10/10/when-to-use-each-of-the-git-diff-algorithms/
git config --global diff.algorithm histogram

# Color moved lines (default is zebra)
git config --global diff.colorMoved "default"

# Push new local branches to remote automatically
git config --global push.autoSetupRemote true

# -------------------------
# ---------Aliases---------
# -------------------------

git config --global --replace-all alias.aliasconfig "config --global --replace-all"

# -----Simple Aliases------
git aliasconfig alias.s "status"
git aliasconfig alias.a "add"
git aliasconfig alias.d "diff"
git aliasconfig alias.sw "switch"
git aliasconfig alias.b "branch"
git aliasconfig alias.f "fetch"
git aliasconfig alias.pl "pull"
git aliasconfig alias.ps "push"
git aliasconfig alias.co "checkout"

# -----------Add-----------

# Add specific changes from the working tree
git aliasconfig alias.ap "add -p"

# Add files that are already tracked
git aliasconfig alias.au "add -u"

# ---------Commit----------
git aliasconfig alias.c "commit"
git aliasconfig alias.cm "commit -m"
git aliasconfig alias.ca "commit --amend"

# -----------Diff----------
git aliasconfig alias.dc "diff --color-words"
git aliasconfig alias.ds "diff --staged"
git aliasconfig alias.dsc "diff --staged --color-words"
git aliasconfig alias.dh "diff HEAD"
git aliasconfig alias.dhc "diff HEAD --color-words"
git aliasconfig alias.dm "diff main"
git aliasconfig alias.dmc "diff main --color-words"
git aliasconfig alias.dl "diff HEAD~1"
git aliasconfig alias.dlc "diff HEAD~1 --color-words"

# -----------Log-----------
git aliasconfig alias.l "log --oneline"
git aliasconfig alias.lt "log --oneline -10"
git aliasconfig alias.ltw "log --oneline -20"
git aliasconfig alias.lth "log --oneline -30"
git aliasconfig alias.lg "log --oneline --graph"
git aliasconfig alias.ltg "log --oneline -10 --graph"
git aliasconfig alias.ltwg "log --oneline -20 --graph"
git aliasconfig alias.lthg "log --oneline -30 --graph"

git aliasconfig alias.lmh "log --oneline main..HEAD"
git aliasconfig alias.lhm "log --oneline HEAD..main"
git aliasconfig alias.lbmh "log --oneline main...head"
git aliasconfig alias.lbhm "log --oneline main...head"

# ----------Stash----------
git aliasconfig alias.sh "stash"
git aliasconfig alias.shs "stash show"
git aliasconfig alias.shps "stash push"
git aliasconfig alias.shop "stash pop"
git aliasconfig alias.sha "stash apply"

# ----------Merge----------
git aliasconfig alias.mg "merge"
git aliasconfig alias.mgc "merge --continue"
git aliasconfig alias.mga "merge --abort"

# ---------Rebase----------
git aliasconfig alias.rb "rebase"
git aliasconfig alias.rbc "rebase --continue"
git aliasconfig alias.rba "rebase --abort"
git aliasconfig alias.rbi "rebase -i"

# ----------Pull-----------
# Pull with merge/rebase
git aliasconfig alias.plm "-c pull.ff=true pull"
git aliasconfig alias.plr "-c pull.ff=true pull --rebase"

# ---------Restore---------
git aliasconfig alias.ro "restore"
git aliasconfig alias.ros "restore --staged"

# ----------Reset----------
# Purposely made to not be super convenient to type
git aliasconfig alias.r-h "reset --hard"
git aliasconfig alias.r-h-h "reset --hard HEAD"
git aliasconfig alias.r-h-l "reset --hard HEAD~"

# ----------Tags-----------

# Create annotated tag
git aliasconfig alias.t "tag -a"

# Push tags to origin
git aliasconfig alias.pst "push origin --tags"

# ------Miscellaneous------

# Branch list by last commit
git aliasconfig alias.bl "branch --sort=-committerdate"

# Create new branch and switch to it
git aliasconfig alias.swc "switch -c"

# Show remotes
git aliasconfig alias.rv "remote -v"

# Prune remote tracking branches for remote branches that no longer exist
git aliasconfig alias.fp "fetch --prune"

# Remove all untracked files
git aliasconfig alias.cfd "clean -fd"
