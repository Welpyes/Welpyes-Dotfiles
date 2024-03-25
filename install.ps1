Clear-Host

Write-Host " __          ___       _                 _    _____           _        _ _ " -BackgroundColor Blue -ForegroundColor White
Write-Host " \ \        / (_)     | |               | |  |_   _|         | |      | | |" -BackgroundColor Blue -ForegroundColor White
Write-Host "  \ \  /\  / / _ _ __ | | __ _ _ __   __| |    | |  _ __  ___| |_ __ _| | |" -BackgroundColor Blue -ForegroundColor White
Write-Host "   \ \/  \/ / | | '_ \| |/ _' | '_ \ / _' |    | | | '_ \/ __| __/ _' | | |" -BackgroundColor Blue -ForegroundColor White
Write-Host "    \  /\  /  | | | | | | (_| | | | | (_| |   _| |_| | | \__ \ || (_| | | |" -BackgroundColor Blue -ForegroundColor White
Write-Host "     \/  \/   |_|_| |_|_|\__,_|_| |_|\__,_|  |_____|_| |_|___/\__\__,_|_|_|" -BackgroundColor Blue -ForegroundColor White
Write-host ""
$important_question = "DO YOU HAVE POWERSHELL 7? (y/n)"
$important_answer = Read-Host -Prompt $important_question

if ($important_answer -eq 'n') {exit}

$question1 = "do you want to install yasb and its python dependencies do you want to proceed? (y/n)"
$response1 = Read-Host -Prompt $question1
$question2 = "do you want to install scoop and all the dependencies? (y/n)"
$response2 = Read-Host -Prompt $question2
$winland = "do you want to install komorebi, alt+drag, fetch and flow-launcher? (y/n)"
Write-Host "if you put 'n' in the last prompt make sure to have scoop installed to install the apps listed below" -ForegroundColor Cyan
$response3 = Read-Host -Prompt $winland


if ($response2 -eq 'y') {
    Write-Host "installing scoop and dependencies" -ForegroundColor Green
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
    scoop install git
    scoop update
    scoop bucket add extras
    scoop bucket add nerd-fonts
    scoop install python JetBrainsMono-NF

} else {
    Write-Host "skipping scoop and dependencies installation"
}


if ($response3 -eq 'y') {
    Write-Host "installing komorebi, alt+drag, fetch and flow-launcher" -ForegroundColor Green
    if ($response2 -eq 'n'){
        scoop bucket add extras
    }
    scoop install komorebi whkd altsnap flow-launcher
    komorebic quickstart
    Invoke-RestMethod https://raw.githubusercontent.com/Hexality/fetch/main/install.ps1 | Invoke-Expression
    .$profile
}


if ($response1 -eq 'y') {
    Write-Host "installing yasb..." -ForegroundColor Green
    Set-Location -Path "$env:USERPROFILE"
    git clone https://github.com/Welpyes/Welpyes-Dotfiles
    Copy-Item -Path ".\Welpyes-Dotfiles\.yasb" -Destination $USERPROFILE -Recurse -Force
    Remove-Item "$env:USERPROFILE\.yasb\config.yaml"
    Remove-Item "$env:USERPROFILE\.yasb\styles.css"
    Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\simple\config.yaml" "$env:USERPROFILE\.yasb\"
    Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\simple\styles.css" "$env:USERPROFILE\.yasb\"
    git clone https://github.com/Welpyes/welpyes-yasb
    Set-Location -Path "$env:USERPROFILE\welpyes-yasb"
    pip install -r requirements.txt
    Clear-Host
    Move-Item $env:USERPROFILE\welpyes-dotfiles\uninstall.ps1 $env:USERPROFILE
    Write-Host "To run the status bar you can just run the run-silent.vbs file" -ForegroundColor Green
    Write-Host "you can change the theme by using ./welpyes-dotfiles\theme-selector\main.ps1 in powershell" -ForegroundColor Green
    Write-Host "I have placed the vbs script in your desktop, you can put it in your startup folder if you want"
    Write-Host "the startup folder is found by using win+r and putting shell:startup"
    Write-Host "to uninstall yasb you can ./uninstall.ps1" -ForegroundColor DarkRed
    Remove-Item -Path "$env:USERPROFILE\welpyes-dotfiles\install.ps1"
    Set-Location -Path "$env:USERPROFILE"
    Copy-Item "welpyes-dotfiles\run-silent.vbs" "desktop" 
    ./welpyes-dotfiles\run-silent.vbs

} else {
    Write-Host "Installation cancelled."
}
