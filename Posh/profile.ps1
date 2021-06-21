Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme suampa.json

Set-Alias -Name v -Value nvim
Set-Alias -Name clt -Value Clear-RecycleBin
Set-PSReadlineKeyHandler -Chord Tab -Function MenuComplete

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

If (-Not (Test-Path Variable:PSise)) {  # Only run this in the console and not in the ISE
    Import-Module Get-ChildItemColor
    
    Set-Alias l Get-ChildItem -option AllScope
    Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}

# profile aliases
function evim {
    v $env:HOME\AppData\Local\nvim\init.vim
}
function eprof {
    v $profile
}
function sprof {
    . $PROFILE
}
