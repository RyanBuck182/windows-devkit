:: My preferred configuration options for git.

@echo off

if exist "..\.env.bat" (
    call "..\.env.bat"
    git config --global user.name "%GIT_USER_NAME%"
    git config --global user.email "%GIT_USER_EMAIL%"
)

git config --global pull.ff only
git config --global core.editor nano
git config --global merge.conflictstyle diff3
git config --global init.defaultBranch main
git config --global diff.algorithm histogram
git config --global diff.colorMoved default

:: Aliases
git config --global --replace-all alias.aliasconfig "config --global --replace-all"

git aliasconfig alias.s "status"
git aliasconfig alias.a "add"
git aliasconfig alias.d "diff"
git aliasconfig alias.ds "diff --staged"
git aliasconfig alias.rs "restore --staged"

git aliasconfig alias.c "commit"
git aliasconfig alias.cm "commit -m"
git aliasconfig alias.ca "commit --amend"
git aliasconfig alias.cam "commit --amend -m"

git aliasconfig alias.l "log --oneline"
git aliasconfig alias.lg "log --oneline --graph"

git aliasconfig alias.sw "switch"
git aliasconfig alias.swc "switch -c"
git aliasconfig alias.b "branch"

git aliasconfig alias.mg "merge"
git aliasconfig alias.rb "rebase"
git aliasconfig alias.rbi "rebase -i"

git aliasconfig alias.f "fetch"
git aliasconfig alias.fp "fetch --prune"
git aliasconfig alias.pl "pull"
git aliasconfig alias.ps "push"

:: Pull with merge/rebase
git aliasconfig alias.plm "-c pull.ff=true pull"
git aliasconfig alias.plr "-c pull.ff=true pull --rebase"

:: Branch list by last commit
git aliasconfig alias.bl "branch --sort=-committerdate"

:: Pushing a new branch
git aliasconfig alias.psu "push -u origin"
