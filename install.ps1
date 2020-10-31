Import-Module ./helpers/functions.psm1
Import-Module ./Posh/install.psm1

$global:confirm = 'not-set'

# install chocolatey
$confirmChoco = getConfirm("You are going to install chocolatey")

if ($confirmChoco -eq 'y') {
    $dir = (Get-Item .).FullName
    powershell.exe -windowstyle hidden -Command "Start-Process powershell -ArgumentList '-NoExit', '-Command cd ''$dir''; Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex' -Verb runAs"
}

# install microsoft-windows-terminal
$confirmWT = getConfirm("You are going to install windows terminal")

if ($confirmWT -eq 'y') {
    choco install microsoft-windows-terminal
}

# install posh
Install-Posh

# install neovim
$confirmNeovim = getConfirm("You are going to install neovim and required file manager plugins")

if ($confirmNeovim -eq 'y') {
    choco install neovim --pre
    choco install ripgrep
    choco install fzf
    choco install bat
    choco install ag
}

