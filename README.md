<h1 align="center">Winland
<br><h4 align="center">I put everything i use here to make windows up my fancy<br>


## info
- **Operating System:** Windows 11
- **Status Bar:** [yasb](https://github.com/da-rth/yasb) 🔥🔥🔥 crossplatform WOOOOO
- **Terminal:** [Windows Terminal](https://github.com/microsoft/terminal) 🍚🍚 riced terminal 
- **Shell:** [Powershell](https://github.com/PowerShell/PowerShell) 🐚 very good crossplatform shell 
- **Application Launcher:** [Flow Launcher](https://github.com/Flow-Launcher/Flow.Launcher) ⚡🔍⚡ quick to index and very customizable 
- **Theme Patchers:** [UltraUX Theme Patcher](https://mhoefs.eu/software_uxtheme.php?ref=syssel&lang=en) & [WinAero Tweaker](https://winaero.com/downloads/winaerotweaker.zip) 😎⚙️ to make windows look cool 
- **Fetch:** [Fetch](https://github.com/Hexality/fetch) by [@Hexality](https://github.com/Hexality) ⚙️ℹ️ similar to neofetch but for powershell
- **Tiling WM:** [Komorebi](https://github.com/LGUG2Z/komorebi) 🎆🖥️🎆 tiling window manager for windows
- **Code editor/IDE:** [Neovim](https://github.com/neovim/neovim) + [NvChad](https://github.com/NvChad/NvChad) 💻⌨️

## Main Screenshot
<br><img width="800-" align="center" src="https://github.com/Welpyes/dotfiles-resource/blob/main/5.png">

<details>
<summary><b>MOAR Screenshots<b></summary>

**click the links**
<br>themes:
- [**Simple**](https://github.com/Welpyes/dotfiles-resource/blob/main/1.png)
- [**Black & White**](https://github.com/Welpyes/dotfiles-resource/blob/main/2.png)
- [**Late Night**](https://github.com/Welpyes/dotfiles-resource/blob/main/3.png)
- [**Day Dream**](https://github.com/Welpyes/dotfiles-resource/blob/main/4.png)

</details>


## Installation and Apps used

<details>
<summary><b>FOR WINDOWS 10 USERS!!!</b></summary>

<br>theres a bug on windows 10 atm that fucks with your scoop installation so you have to install them manually
<br>heres a guide on how to do it

<br>If you dont have powershell 7, install it with this command:
```
winget install Microsoft.PowerShell
```
If you dont have scoop install it using this command. please restart your shell after installing scoop
```
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```
then install the buckets and git
```
scoop install git
scoop bucket add extras
scoop bucket add nerd-fonts
scoop update
scoop install python JetBrainsMono-NF
```
**OPTIONAL** installing the misc apps using scoop
```
scoop install komorebi whkd altsnap flow-launcher
```
installing my status bar
```
Set-Location -Path "$env:USERPROFILE"
git clone https://github.com/Welpyes/Welpyes-Dotfiles
mkdir "$env:USERPROFILE\.yasb"
Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\simple\config.yaml" "$env:USERPROFILE\.yasb\"
Copy-Item "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\simple\styles.css" "$env:USERPROFILE\.yasb\"
git clone https://github.com/Welpyes/welpyes-yasb
Set-Location -Path "$env:USERPROFILE\welpyes-yasb"
pip install -r requirements.txt
Move-Item $env:USERPROFILE\welpyes-dotfiles\uninstall.ps1 $env:USERPROFILE
Remove-Item -Path "$env:USERPROFILE\welpyes-dotfiles\install.ps1"
Set-Location -Path "$env:USERPROFILE"
Copy-Item "welpyes-dotfiles\run-silent.vbs" "desktop" 
./welpyes-dotfiles\run-silent.vbs
```
the installation is finished after that
<br>if you want the bar to run at startup put the `run-silent.vbs` in `shell:startup`
<br>to change the theme you can run:
```
./welpyes-dotfiles\theme-selector\main.ps1
```

</details>



<details>
<summary><b>HOW TO INSTALL(windows 11)</b></summary>
<br>
<br>for optimal installation please make sure your windows installation is updated
<br>
<br>
<br>Run this command on an elevated Powershell tab


```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
Then run this on a normal one
```
irm https://raw.githubusercontent.com/Welpyes/Welpyes-Dotfiles/main/install.ps1 | iex
```

</details>

<details>
<summary><b>additional apps</b></summary>

  apps that i feel like doesnt belong from anything above
- [altsnap](https://github.com/RamonUnch/AltSnap) ▪ Window manipulation using the alt key
- [quick look](https://github.com/QL-Win/QuickLook) ▪ Brings Quicklook to Windows from MacOs
- [vencord](https://vencord.dev/) ▪ Cutest Discord Client -w-
- [greenshot](https://github.com/greenshot/greenshot) ▪ Screenshotting application
- [Yt Music](https://github.com/th-ch/youtube-music) ▪ A YT music client with a bunch of plugins

</details>

