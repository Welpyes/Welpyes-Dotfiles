Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class Wallpaper {
    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

$SPI_SETDESKWALLPAPER = 0x0014
$UpdateIniFile = 0x01
$SendChange = 0x02

$wallpaperPath = "$env:USERPROFILE\welpyes-dotfiles\yasb-themes\red and black\wallpaper.png"
[Wallpaper]::SystemParametersInfo($SPI_SETDESKWALLPAPER, 0, $wallpaperPath, $UpdateIniFile -bor $SendChange)
