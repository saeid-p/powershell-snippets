# https://www.hanselman.com/blog/how-to-make-a-pretty-prompt-in-windows-terminal-with-powerline-nerd-fonts-cascadia-code-wsl-and-ohmyposh
# Font: "Cascadia Code PL": https://github.com/microsoft/cascadia-code/releases
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine

# Open the current context proile in notepad and add the following lines:
notepad $PROFILE

Import-Module posh-git
Import-Module oh-my-posh    
Set-Theme Paradox #Optional theme. Works best with Cascadia Code PL.