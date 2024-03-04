Set-Location -Path "$env:USERPROFILE"

# Clone the Welpyes-Dotfiles repository
git clone https://github.com/Welpyes/Welpyes-Dotfiles

# Copy the .config/cava folder to the user's folder
Copy-Item -Path ".\Welpyes-Dotfiles\.config" -Destination $USERPROFILE -Recurse -Force

# Copy the .yasb folder to the user's folder
Copy-Item -Path ".\Welpyes-Dotfiles\.yasb" -Destination $USERPROFILE -Recurse -Force

# Clone the welpyes-yasb repository
git clone https://github.com/Welpyes/welpyes-yasb

# Change directory to the cloned welpyes-yasb repository
Set-Location -Path "$env:USERPROFILE\welpyes-yasb"

# Install the Python requirements
pip install -r requirements.txt

Clear-Host

# Print the instructions
Write-Host "To run the status bar you can just run the run-silent.vbs file" -ForegroundColor Blue
Write-Host "You can also make your own batch file if you can" -ForegroundColor Blue
Write-Host "i dont really know the dependencies of CAVA but you can go to their github page to know" -ForegroundColor Blue
Remove-Item -Path "$env:USERPROFILE\welpyes-dotfiles\install.ps1"
Set-Location -Path "$env:USERPROFILE"
