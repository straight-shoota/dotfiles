Invoke-Expression (&starship init powershell)

Function dotfiles { git --git-dir=$HOME\.dotfiles --work-tree=$HOME @Args }

Import-Module posh-git
