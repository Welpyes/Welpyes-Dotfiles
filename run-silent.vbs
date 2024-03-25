Set objShell = CreateObject("Wscript.Shell")
objShell.Run("powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File %USERPROFILE%\welpyes-dotfiles\run.ps1"), 0, True
