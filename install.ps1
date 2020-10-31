$global:confirm = 'not-set'

function sudo()
{
    if ($args.Length -eq 1)
    {
        start-process $args[0] -verb "runAs"
    }
    if ($args.Length -gt 1)
    {
        start-process $args[0] -ArgumentList $args[1..$args.Length] -verb "runAs"
    }
}

function getConfirm ($message) {
    Write-Host $global:confirm
    if ($global:confirm -eq 'Y') {
        return 'y'
    } elseif ($global:confirm -eq 'N') {
        return 'n'
    }

    $global:confirm = Read-Host "$message. Are you sure? [y]es | [n]o | [Y]es to all | [N]o to all: "

    return $global:confirm
}

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

# install oh my posh to manage terminal themes
$confirmOMP = getConfirm("You are going to install Oh my Posh and powerline plugins")

if ($confirmOMP -eq 'y') {
    Install-Module posh-git -Scope CurrentUser
    Install-Module oh-my-posh -Scope CurrentUser -AllowPrerelease
    Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

    # install colors for ls
    sudo choco install get-childitemcolor
}

# install neovim
$confirmNeovim = getConfirm("You are going to install neovim and required file manager plugins")

if ($confirmNeovim -eq 'y') {
    choco install neovim --pre
    choco install ripgrep
    choco install fzf
    choco install bat
    choco install ag
}

