:: Open a new command prompt tab in the current windows terminal window.
:: TODO: make it open a new tab when run in administrator window

@echo off
wt --window last nt --profile "Command Prompt" %*
