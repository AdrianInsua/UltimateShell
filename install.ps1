Import-Module ./helpers/functions.psm1
Import-Module ./Posh/install.psm1
Import-Module ./NeoVim/install.psm1

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

# install vimify explorer
$confirmVimify = getConfirm("You are going to install vimify explorer. Windows explorer with vim keys")

if ($confirmVimify -eq 'y') {
    wget https://github.com/sahilsehwag/AHK-VimifiedExplorer/releases/download/1.0/VimifiedExplorer.exe -OutFile "$env:HOME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\vimifiedExplorer.exe"
}

# install posh
Install-Posh

# install neovim
Install-NeoVim

# add basic aliases
$confirmAlias = getConfirm("You are going to populate some basic aliases in your profile.")

if ($confirmAlias -eq 'y') {
    Add-Content $profile "# profile aliases"
    Add-Content $profile "function evim {"
    Add-Content $profile "    v $env:HOME\AppData\Local\nvim\init.vim"
    Add-Content $profile "}"
    Add-Content $profile "function eprof {"
    Add-Content $profile "    v $profile"
    Add-Content $profile "}"
    Add-Content $profile "function sprof {"
    Add-Content $profile "    . $PROFILE"
    Add-Content $profile "}"
}
