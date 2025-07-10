# Open a new administrator powershell window that properly handles the opening of new tabs.
# This is a workaround for this bug https://github.com/microsoft/terminal/issues/9628
# which prevents the tp command from working correctly in an administrator window.

Start-Process -Verb RunAs powershell.exe -ArgumentList '-Command', 'wt -w new nt'
