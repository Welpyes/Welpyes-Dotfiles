<h1 align="center">Amogus Files
<br><h5 align="center">I put everything i use here to make windows up my fancy<br>
 
<h3 align="center">disclaimer: I am not responsible if you destroy your<br> windows installation with these tools/programs<br> **DO AT YOUR OWN RISK**


## info
- **Operating System:** Windows 10
- **Status Bar:** [yasb](https://github.com/da-rth/yasb)
- **Application Launcher:** [Flow Launcher](https://github.com/Flow-Launcher/Flow.Launcher)
- **Window Manager:** [FancyWM](https://github.com/FancyWM/fancywm)
- **Theme Patchers:** [UltraUX Theme Patcher](https://mhoefs.eu/software_uxtheme.php?ref=syssel&lang=en) & [WinAero Tweaker](https://winaero.com/downloads/winaerotweaker.zip)
- **Theme:** [Dark by KDr3w)](https://www.deviantart.com/kdr3w/art/Dark-845402016)
- **Cursor:** [Blue Archive Cursor](https://github.com/makipom/BlueArchive-Cursors)
- **Fetch:** [Fetch](https://github.com/Hexality/fetch) by [@Hexality](https://github.com/Hexality)
- **Visualizer:** [Cava](https://github.com/karlstav/cava)
 
## Screenshots
<img align="center" src="https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/images/2024-02-28%2003_16_19-Greenshot.png">
<img align="center" src="https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/images/2024-02-28%2003_59_10-Greenshot.png">

## Installation
<details>
<summary><b>Long ass reading XD</b></summary>

## Fetch
Its a Powershell-based fetch thing by [@Hexality](https://github.com/Hexality) similar to [neofetch](https://github.com/dylanaraps/neofetch),
<br> It can be installed on [powershell 7](https://github.com/PowerShell/PowerShell) by using:
```ps1
irm https://raw.githubusercontent.com/Hexality/fetch/main/install.ps1 | iex
```
Huge thanks to [@Hexality](https://github.com/Hexality) for making this gorgeous lookin fetch

## yasb(Yet Another Status Bar)
A highly configurable cross-platform (Windows) status bar written in Python.
<br> https://github.com/da-rth/yasb
<br>  
![image](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/images/bar.png)
<br>  
<br> you can use my [config](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/config.yaml) and [styles.css](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/styles.css)
<br> All you need to do is to put the files in `/users/(username)/.yasb`
<br> I'll keep them updated as much as i can
<details>
<summary><b>How to install</b></summary>
clone this repository: https://github.com/Welpyes/welpyes-yasb

- Install Python(any ver above 3.10 should be fine)
- Install required Python Modules:
   `pip install -r requirements.txt`
- Create the directory `C:/Users/{username}/.yasb/` and copy styles.css and config.yaml into folder.
- Configure styles.css and config.yaml to your liking.
- Start the application:
- run `python src/main.py` in your terminal (or create a startup shortcut)

</details>

<br> **note: backup your old configs before replacing it with mine**

## FancyWM
FancyWM is a dynamic tiling window manager for Windows 10/11.
its a really good window manager in general
<br><https://github.com/FancyWM/fancywm>

you can get my [settings.json](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/fancywm%20setting/settings.json) by downloading it from this repo
<br>all you have to do is to put it inside your FancyWM folder and you should be good
<br>as for me its located at `AppData\Local\Packages\2203VeselinKaraganev.FancyWM_9x2ndwrcmyd2c\LocalCache\Roaming\FancyWM`
<br>although it might be different for you.

<details>
<summary><b>Keybinds</b></summary>

#### do note that i dont have an activation hotkey
- ToggleManager: LeftAlt + F11
- RefreshWorkspace: LeftAlt + R
- Cancel: LeftShift + LeftAlt + Oem3
- MoveFocusLeft: LeftAlt + Left
- MoveFocusUp: LeftAlt + Up
- MoveFocusRight: LeftAlt + Right
- MoveFocusDown: LeftAlt + Down
- ShowDesktop: LeftAlt + D
- CreateHorizontalPanel: LeftAlt + A
- CreateVerticalPanel: LeftAlt + W
- CreateStackPanel: LeftAlt + Q
- PullWindowUp: LeftAlt + L
- ToggleFloatingMode: LeftAlt + F
- SwapLeft: LeftShift + LeftAlt + Left
- SwapUp: LeftAlt + LeftShift + Up
- SwapRight: LeftShift + LeftAlt + Right
- SwapDown: LeftShift + LeftAlt + Down
- IncreaseWidth: LeftCtrl + LeftShift + Z
- IncreaseHeight: LeftCtrl + LeftShift + X
- SwitchToDesktop1: LeftAlt + D1
- SwitchToDesktop2: LeftAlt + D2
- SwitchToDesktop3: LeftAlt + D3
- SwitchToDesktop4: LeftAlt + D4
- SwitchToDesktop5: LeftAlt + D5
- MoveToDesktop1: LeftAlt + LeftShift + D1
- MoveToDesktop2: LeftShift + LeftAlt + D2
- MoveToDesktop3: LeftAlt + LeftShift + D3
- MoveToDesktop4: LeftAlt + LeftShift + D4
- MoveToDesktop5: LeftAlt + LeftShift + D5
</details>

## Cava
Cava is a customizable Cross-platform Audio Visualizer that runs on the terminal
<br><https://github.com/karlstav/cava>
<br><img src="https://github.com/karlstav/cava/blob/master/example_files/cava.gif?raw=true" align="center" width="400px">

you can download the .exe file from this repo :D
</details>
