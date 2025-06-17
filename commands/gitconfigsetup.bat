:: My preferred configuration options for git.

@echo off
setlocal enabledelayedexpansion

if exist "..\config.bat" (
    call "..\config.bat"
    git config --global user.name "!GIT_USER_NAME!"
    git config --global user.email "!GIT_USER_EMAIL!"
)

git config --global pull.ff only
git config --global core.editor nano
git config --global merge.conflictstyle zdiff3
git config --global init.defaultBranch main
git config --global diff.algorithm histogram
git config --global diff.colorMoved default

:: Aliases
git config --global --replace-all alias.aliasconfig "config --global --replace-all"

git aliasconfig alias.s "status"
git aliasconfig alias.a "add"
git aliasconfig alias.au "add -u"
git aliasconfig alias.ap "add -p"
git aliasconfig alias.rs "restore --staged"

git aliasconfig alias.c "commit"
git aliasconfig alias.cm "commit -m"
git aliasconfig alias.ca "commit --amend"
git aliasconfig alias.cam "commit --amend -m"

git aliasconfig alias.d "diff"
git aliasconfig alias.ds "diff --staged"
git aliasconfig alias.dc "diff --color-words"
git aliasconfig alias.dsc "diff --staged --color-words"
git aliasconfig alias.dl "diff HEAD~1"

git aliasconfig alias.l "log --oneline"
git aliasconfig alias.lg "log --oneline --graph"

git aliasconfig alias.sw "switch"
git aliasconfig alias.swc "switch -c"
git aliasconfig alias.b "branch"

git aliasconfig alias.mg "merge"
git aliasconfig alias.mgc "merge --continue"
git aliasconfig alias.mga "merge --abort"

git aliasconfig alias.rb "rebase"
git aliasconfig alias.rbi "rebase -i"
git aliasconfig alias.rbc "rebase --continue"
git aliasconfig alias.rba "rebase --abort"

git aliasconfig alias.rv "remote -v"
git aliasconfig alias.f "fetch"
git aliasconfig alias.fp "fetch --prune"
git aliasconfig alias.pl "pull"
git aliasconfig alias.ps "push"

git aliasconfig alias.sh "stash"
git aliasconfig alias.shs "stash show"
git aliasconfig alias.shps "stash push"
git aliasconfig alias.shop "stash pop"
git aliasconfig alias.sha "stash apply"

:: Branch list by last commit
git aliasconfig alias.bl "branch --sort=-committerdate"

:: Pull with merge/rebase
git aliasconfig alias.plm "-c pull.ff=true pull"
git aliasconfig alias.plr "-c pull.ff=true pull --rebase"

:: Pushing a new branch
git aliasconfig alias.psu "push -u origin"

:: Reset to HEAD (the last commit)
git aliasconfig alias.r-to-head "reset --hard HEAD"

:: Reset to a specific commit
git aliasconfig alias.r-to-commit "reset --hard"

:: Restore all staged files
git aliasconfig alias.rs-all "restore --staged *"

:: Restore all modified files
git aliasconfig alias.r-all "restore *"

:: Remove all untracked files
git aliasconfig alias.cfd "clean -fd"
