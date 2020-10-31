# install neovim
function Install-NeoVim {
    $confirmNeovim = getConfirm("You are going to install neovim and required file manager plugins")

    if ($confirmNeovim -eq 'y') {
        choco install neovim --pre
        choco install ripgrep
        choco install fzf
        choco install bat
        choco install ag
    }

    Write-Host ""
    Write-Host "VIM Configuration"
    Write-Host "Check Vim configuration in github (https://github.com/AdrianInsua/UltimateShell/NeoVim)"
    Write-Host "Once you have understood it you are good to go and populate your initial vim configuration"
    Write-Host ""

    $confirmPopulateConfig = getConfirm("We are going to populate your vim configuration")

    if ($confirmPopulateConfig -eq 'y') {
        $path = "$env:HOME\AppData\Local\nvim"

        if (Test-Path $path) {
            mv -r $path "$path-old"
        }

        mv -r .\NeoVim\config/* $path

        # install plugins
        nvim +PlugInstall +qall
    }

    $confirmFix = getConfirm("Neovim fzf preview have some bugs on w10, we are gonna fix them!")

    if ($confirmFix -eq 'y') {
        wget https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.7.2-1/rubyinstaller-devkit-2.7.2-1-x64.exe -Output rubyinstaller.exe
        rubyinstaller.exe
        mv .\NeoVim\fix\preview.rb "$env:HOME\.vim\plugged\fzf.vim\bin" -Force
        mv .\NeoVim\fix\vim.vim "$env:HOME\.vim\plugged\fzf.vim\autoload\fzf" -Force
        rm rubyinstaller.exe
    }

    $confirmSnippets = getConfirm("We are going to create snippets for javascript tests")

    if ($confirmSnippets -eq 'y') {
        mv .\NeoVim\snippets\javascript.snippets "$env:HOME\AppData\Local\coc\ultisnips" -Force
    }
}

Export-ModuleMember -Function Install-NeoVim
