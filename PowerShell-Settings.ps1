# https://www.hanselman.com/blog/how-to-make-a-pretty-prompt-in-windows-terminal-with-powerline-nerd-fonts-cascadia-code-wsl-and-ohmyposh
# Font: "Cascadia Code PL"
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine

notepad $PROFILE
    Import-Module posh-git
    Import-Module oh-my-posh    
    Set-Theme Paradox