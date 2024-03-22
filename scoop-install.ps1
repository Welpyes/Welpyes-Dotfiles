Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

.$profile
scoop update
scoop bucket add extras
scoop bucket add nerd-fonts

scoop install git python jetbrainsmono-nf
