# install oh my posh to manage terminal themes
function Install-Posh {
    $confirmOMP = getConfirm("You are going to install Oh my Posh and powerline plugins")

    if ($confirmOMP -eq 'y') {
        Install-Module posh-git -Scope CurrentUser
        Install-Module oh-my-posh -Scope CurrentUser -AllowPrerelease
        Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

        Add-Content $profile "Set-PSReadlineKeyHandler -Chord Tab -Function MenuComplete"

        # install colors for ls
        sudo choco install get-childitemcolor
    }

    $confirmTheme = getConfirm("You are going to install awesome Suampa theme for oh-my-posh and set it as default theme")

    if ($confirmTheme -eq 'y') {
        Move-Item -Force ./Posh/themes/suampa.json $home/suampa.json
        Add-Content $profile "Set-PoshPrompt -Theme $home/suampa.json"
    }

    Write-Host ""
    Write-Host "We recommend to install RobotoMono Nerd Font to render correct icons in shell"
    Write-Host ""
    Write-Host "Also you should check windows-terminal (https://github.com/AdrianInsua/UltimateShell/tree/main/Posh#my-wonderfull-powershell-configuration) settings to fix color schemes and fonts"
    Write-Host ""

    $confirmFonts = getConfirm("You are going to install Roboto Mono font")

    if ($confirmFonts -eq 'y') {
        wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip -OutFile ./Posh/fonts/RobotoMono.zip
        Expand-Archive .\Posh/fonts/RobotoMono.zip -DestinationPath RobotoMono

        Get-ChildItem -Path RobotoMono -Include '*.ttf','*.ttc','*.otf' -Recurse | ForEach {
            If (-not(Test-Path "C:\Windows\Fonts\$($_.Name)")) {
                
                # Install font
                $Destination.CopyHere($($_.FullName), 0x10)
            }
        }

        Remove-Item -Recurse RobotoMono
    }
}

Export-ModuleMember -Function Install-Posh

