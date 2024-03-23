<h1 align="center">Winland?
<br><h4 align="center">I put everything i use here to make windows up my fancy<br>

## info
- **Operating System:** Windows 11
- **Status Bar:** [yasb](https://github.com/da-rth/yasb)
- **Application Launcher:** [Flow Launcher](https://github.com/Flow-Launcher/Flow.Launcher)
- **Theme Patchers:** [UltraUX Theme Patcher](https://mhoefs.eu/software_uxtheme.php?ref=syssel&lang=en) & [WinAero Tweaker](https://winaero.com/downloads/winaerotweaker.zip)
- **Fetch:** [Fetch](https://github.com/Hexality/fetch) by [@Hexality](https://github.com/Hexality)
- **Tiling WM:** [Komorebi](https://github.com/LGUG2Z/komorebi)

## What does this dotfiles contain?
it contains the installation of my status bar [yasb](https://github.com/da-rth/yasb) and its themes



<br><img width="800-" align="center" src="https://github.com/Welpyes/Welpyes-Dotfiles/assets/110968684/5190f629-5dec-4493-a2e2-9d9bcb60786a">

<details>
<summary><h2>HOW TO INSTALL</h3></summary>

### Prerequisites
- Make sure you have [Python 3.10+](https://www.python.org/downloads/) and pip installed
- You Have [git](https://git-scm.com/download/win) installed
- You have Jetbrains [Nerdfonts](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip) installed
<br><b>all of these can be installed using [scoop](https://scoop.sh/)</b>


<details>
<summary><b>installing scoop and dependecies</summary>
if you dont have these or you dont have scoop you can install scoop and the dependencies using these commands <br>
<br>

use this on an elevated(administrator terminal)
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

and this to a normal one
```
irm https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/scoop-install.ps1 | iex
```
</details>

<b>this script only installs [yasb](https://github.com/da-rth/yasb)

```
irm https://raw.githubusercontent.com/Welpyes/Welpyes-Dotfiles/main/install.ps1 | iex
```
to change themes you can use this command
```
./welpyes-dotfiles\theme-selector\main.ps1
```


<br> after you installed them you can run the `run-silent.vbs` in the `c:\users\{your username}\welpyes-dotfiles` and you should be good to go

</details>
