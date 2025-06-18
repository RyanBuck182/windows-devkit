:: My preferred configuration options for git.

@echo off
setlocal enabledelayedexpansion

if exist "..\config.bat" (
    call "..\config.bat"
    git config --global user.name "!GIT_USER_NAME!"
    git config --global user.email "!GIT_USER_EMAIL!"
)

:: -------------------------
:: --------Settings---------
:: -------------------------

git config --global pull.ff only
git config --global core.editor nano
git config --global merge.conflictstyle zdiff3
git config --global init.defaultBranch main
git config --global diff.algorithm histogram
git config --global diff.colorMoved default

:: -------------------------
:: ---------Aliases---------
:: -------------------------

git config --global --replace-all alias.aliasconfig "config --global --replace-all"

:: Simple Aliases
git aliasconfig alias.s "status"
git aliasconfig alias.a "add"
git aliasconfig alias.d "diff"
git aliasconfig alias.sw "switch"
git aliasconfig alias.b "branch"
git aliasconfig alias.f "fetch"
git aliasconfig alias.pl "pull"
git aliasconfig alias.ps "push"

git aliasconfig alias.c "commit"
git aliasconfig alias.cm "commit -m"
git aliasconfig alias.ca "commit --amend"

:: Merge
git aliasconfig alias.mg "merge"
git aliasconfig alias.mgc "merge --continue"
git aliasconfig alias.mga "merge --abort"

:: Rebase
git aliasconfig alias.rb "rebase"
git aliasconfig alias.rbc "rebase --continue"
git aliasconfig alias.rba "rebase --abort"
git aliasconfig alias.rbi "rebase -i"

:: Log
git aliasconfig alias.l "log --oneline"
git aliasconfig alias.lg "log --oneline --graph"

:: Diff
git aliasconfig alias.ds "diff --staged"
git aliasconfig alias.dc "diff --color-words"
git aliasconfig alias.dsc "diff --staged --color-words"

:: Stash aliases
git aliasconfig alias.sh "stash"
git aliasconfig alias.shs "stash show"
git aliasconfig alias.shps "stash push"
git aliasconfig alias.shop "stash pop"
git aliasconfig alias.sha "stash apply"

:: The following aliases are ordered roughly by the frequency that I use them

:: Pull with merge/rebase
git aliasconfig alias.plm "-c pull.ff=true pull"
git aliasconfig alias.plr "-c pull.ff=true pull --rebase"

:: Branch list by last commit
git aliasconfig alias.bl "branch --sort=-committerdate"

:: Create new branch and switch to it
git aliasconfig alias.swc "switch -c"

:: Pushing a new branch
git aliasconfig alias.psu "push -u origin"

:: Restore staged changes to the working tree
git aliasconfig alias.rs "restore --staged"

:: Prune remote tracking branches for remote branches that no longer exist
git aliasconfig alias.fp "fetch --prune"

:: Show remotes
git aliasconfig alias.rv "remote -v"

:: Add specific changes from the working tree
git aliasconfig alias.ap "add -p"

:: Diff between working tree and last commit
git aliasconfig alias.dl "diff HEAD~1"

:: Remove all untracked files
git aliasconfig alias.cfd "clean -fd"

:: Add files that are already tracked
git aliasconfig alias.au "add -u"

:: Reset to HEAD (the last commit)
git aliasconfig alias.r-to-head "reset --hard HEAD"

:: Reset to a specific commit
git aliasconfig alias.r-to-commit "reset --hard"

:: Restore all staged files
git aliasconfig alias.rs-all "restore --staged *"

:: Restore all modified files
git aliasconfig alias.r-all "restore *"
