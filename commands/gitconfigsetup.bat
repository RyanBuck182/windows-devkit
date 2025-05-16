:: My preferred configuration options for git.

@echo off

git config --global pull.ff only
git config --global core.editor nano
git config --global merge.conflictstyle diff3
git config --global init.defaultBranch main
git config --global diff.algorithm histogram

:: Aliases
git config --global --replace-all alias.conf "config --global --replace-all"

git conf alias.s "status"

git conf alias.c "commit"
git conf alias.cm "commit -m"
git conf alias.ca "commit --amend"
git conf alias.cam "commit --amend -m"

git conf alias.a "add"

git conf alias.d "diff"
git conf alias.ds "diff --staged"

git conf alias.l "log --oneline"
git conf alias.lg "log --oneline --graph"

git conf alias.rs "restore --staged"

git conf alias.sw "switch"
git conf alias.swc "switch -c"

git conf alias.b "branch"

git conf alias.pl "pull"
git conf alias.pl "pull --rebase"

git conf alias.ps "push"
git conf alias.psu "push -u origin"
