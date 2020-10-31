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
    if ($global:confirm -ceq 'Y') {
        return 'y'
    }

    $global:confirm = Read-Host "$message. Are you sure? [y]es | [n]o | [Y]es to all | [N]o to all: "

    if ($global:confirm -ceq 'N') {
        exit
    }

    return $global:confirm
}

Export-ModuleMember -Function sudo
Export-ModuleMember -Function getConfirm
