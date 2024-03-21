clear-host
$logo = @"
 __    __               __          ______ __                                          
/\ \  /\ \             /\ \        /\__  _/\ \                                         
\  \ \\/'/  __      ___\ \ \____   \/_/\ \\ \ \___      __    ___ ___      __    ____  
  \ |\ /' /'__ \   /',__\ \ '__ \     \ \ \\ \  _  \  /'__ \/' __  __ \  /'__ \ /',__\ 
    \ \ \/\ \L\.\_/\__,  \ \ \L\ \     \ \ \\ \ \ \ \/\  __//\ \/\ \/\ \/\  __//\__,  \
     \ \_\ \__/.\_\/\____/\ \_,__/      \ \_\\ \_\ \_\ \____\ \_\ \_\ \_\ \____\/\____/
      \/_/\/__/\/_/\/___/  \/___/        \/_/ \/_/\/_/\/____/\/_/\/_/\/_/\/____/\/___/
"@

Write-Host $logo

# Define the options
$themes = @("simple", "Daydream", "Late Night", "Exit")

# Create a menu
Write-Host "Select yasb theme"
for ($i=0; $i -lt $themes.Length; $i++) {
    Write-Host "$($i+1): $($themes[$i])"
}

# Get user selection
$selection = Read-Host "Please enter the number of your selection"

# Handle the selection
switch ($themes[$selection-1]) {
    "simple" {
        Write-Host "applying 'simple' theme..."
        Remove-Item "$env:USERPROFILE\.yasb\config.yaml"
        Remove-Item "$env:USERPROFILE\.yasb\styles.css"
        Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\simple\config.yaml" "$env:USERPROFILE\.yasb\"
        Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\simple\styles.css" "$env:USERPROFILE\.yasb\"
        Write-Host "You selected the 'simple' theme."
        cd ~
		      ./welpyes-dotfiles\theme-selector\simple-wallpaper.ps1
        ./welpyes-dotfiles\restart.ps1
        ./welpyes-dotfiles\theme-selector\main.ps1
    }
    "Daydream" {
        Write-Host "applying 'Daydream' theme..."
        Remove-Item "$env:USERPROFILE\.yasb\config.yaml"
        Remove-Item "$env:USERPROFILE\.yasb\styles.css"
        Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\Daydream\config.yaml" "$env:USERPROFILE\.yasb\"
        Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\Daydream\styles.css" "$env:USERPROFILE\.yasb\"
        Write-Host "You selected the 'Daydream' theme."
        cd ~
		      ./welpyes-dotfiles\theme-selector\daydream-wallpaper.ps1
        ./welpyes-dotfiles\restart.ps1
        ./welpyes-dotfiles\theme-selector\main.ps1
    }
    "Late Night" {
        Write-Host "applying 'Late Night' theme..."
        Remove-Item "$env:USERPROFILE\.yasb\config.yaml"
        Remove-Item "$env:USERPROFILE\.yasb\styles.css"
        Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\late night\config.yaml" "$env:USERPROFILE\.yasb\"
        Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\late night\styles.css" "$env:USERPROFILE\.yasb\"
        Write-Host "You selected the 'Late Night' theme."
        cd ~
		      ./welpyes-dotfiles\theme-selector\latenight-wallpaper.ps1
        ./welpyes-dotfiles\restart.ps1
        ./welpyes-dotfiles\theme-selector\main.ps1
    }
    "Exit" { Write-Host "Exiting script..."; exit }
    default { Write-Host "Invalid selection. Please try again."; exit }
}
