$question = "This script uninstalls yasb and its python dependencies do you want to proceed? (y/n)"
$response = Read-Host -Prompt $question

if ($response -eq 'y') {
    Write-Host "Proceeding with the uninstallation..."
    taskkill /F /IM python.exe /T
    Set-Location -Path "$env:USERPROFILE\welpyes-yasb"
    pip uninstall -y -r requirements.txt
    Set-Location -Path "$env:USERPROFILE"
    Remove-Item -Recurse -Force "$env:USERPROFILE\welpyes-yasb"
    Remove-Item -Recurse -Force "$env:USERPROFILE\welpyes-dotfiles"
    Remove-Item -Recurse -Force "$env:USERPROFILE\.yasb"
    Remove-Item -Recurse -Force "$env:USERPROFILE\uninstall.ps1"
} else {
    Write-Host "uninstallation cancelled."
}

