Clear-Host

Write-Host " __     __       _     "
Write-Host " \ \   / /      | |    "
Write-Host "  \ \_/ /_ _ ___| |__  "
Write-Host "   \   / _` / __| '_ \ "
Write-Host "    | | (_| \__ \ |_) |"
Write-Host "    |_|\__,_|___/_.__/ "

$question = "This script installs yasb and its python dependencies do you want to proceed? (y/n)"
$response = Read-Host -Prompt $question

if ($response -eq 'y') {
    Write-Host "Proceeding with the installation..."
    Set-Location -Path "$env:USERPROFILE"
    git clone https://github.com/Welpyes/Welpyes-Dotfiles
    Copy-Item -Path ".\Welpyes-Dotfiles\.yasb" -Destination $USERPROFILE -Recurse -Force
    git clone https://github.com/Welpyes/welpyes-yasb
    Set-Location -Path "$env:USERPROFILE\welpyes-yasb"
    pip install -r requirements.txt
    Clear-Host
    Move-Item $env:USERPROFILE\welpyes-dotfiles\uninstall.ps1 $env:USERPROFILE
    Write-Host "To run the status bar you can just run the run-silent.vbs file" -ForegroundColor Blue
    Write-Host "You can also make your own batch file if you can" -ForegroundColor Blue
    Write-Host "i dont really know the dependencies of CAVA but you can go to their github page to know" -ForegroundColor Blue
    Remove-Item -Path "$env:USERPROFILE\welpyes-dotfiles\install.ps1"
    Set-Location -Path "$env:USERPROFILE"
    explorer $env:USERPROFILE\welpyes-dotfiles

} else {
    Write-Host "Installation cancelled."
}
