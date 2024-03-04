Set-Location -Path "$env:USERPROFILE"

git clone https://github.com/Welpyes/Welpyes-Dotfiles

Copy-Item -Path ".\Welpyes-Dotfiles\.config" -Destination $USERPROFILE -Recurse -Force

Copy-Item -Path ".\Welpyes-Dotfiles\.yasb" -Destination $USERPROFILE -Recurse -Force

git clone https://github.com/Welpyes/welpyes-yasb

Set-Location -Path "$env:USERPROFILE\welpyes-yasb"

pip install -r requirements.txt

Clear-Host

Write-Host "To run the status bar you can just run the run-silent.vbs file" -ForegroundColor Blue
Write-Host "You can also make your own batch file if you can" -ForegroundColor Blue
Write-Host "i dont really know the dependencies of CAVA but you can go to their github page to know" -ForegroundColor Blue
Remove-Item -Path "$env:USERPROFILE\welpyes-dotfiles\install.ps1"
Set-Location -Path "$env:USERPROFILE"
