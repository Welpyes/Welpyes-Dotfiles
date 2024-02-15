 <h1>AMOGUS</h1>
 i literally just dump anything that i use here

<h3>Heres a screenshot of my current desktop :)</h3>

<img align="center" src="https://github.com/Welpyes/Welpyes-Dotfiles/blob/6998d9150582e0bb0339c1e987d6914fbf752d96/Screenshot%20(1).png">

### stuffs atm
- [yasb](https://github.com/Welpyes/Welpyes-Dotfiles?tab=readme-ov-file#yasb-yet-another-status-bar)
- [fetch](https://github.com/Welpyes/Welpyes-Dotfiles#custom-fetchby-hexality)

## [Yasb](https://github.com/da-rth/yasb) (yet another status bar)
### its a highly configurable status bar that runs on python
I use this status bar since its fast and realy easy to configure
the only downside of using yasb is its currently buggy and the `offset` setting is currently not available.

you can use my setup like my [config.yaml](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/yasb%20stuff/config.yaml) and the [styles.css](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/yasb%20stuff/styles.css) from here
you can put them in the `\Users\(your user)\.yasb` folder to be able to use them
i'll keep them updated as much as i can.

#### the installation is found in the [Yasb](https://github.com/da-rth/yasb) github page 
### BUT
#### Make sure to use my [requirements.txt](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/yasb%20stuff/requirements.txt) instead of the one in the [yasb github](https://github.com/da-rth/yasb) since its currently outdated and yasb would not work
put the [requirements.txt](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/yasb%20stuff/requirements.txt) in your `downloads` folder and
open the terminal and use `cd .\Downloads\` and 
then execute `pip install -r requirements.txt`

## Custom fetch(by [@Hexality](https://github.com/Hexality))
### a fetch command made by [@Hexality](https://github.com/Hexality) 
simillar to Neofetch but its only for windows, its made in powershell stuff(idk)
you can customize this if you know what you are doing(i dont)

put [fetch.ps1](https://github.com/Welpyes/Welpyes-Dotfiles/blob/main/fetch.ps1) into your users folder and you can basically access it by using `pwsh fetch.ps1` in the terminal(Powershell)

you can make a custom command by puting
`function fetch {pwsh -File 'C:\Users\(your username)\fetch.ps1'}`
into your powershell profile
  you can access it by using `notepad .$PROFILE`
