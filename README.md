# posh-ssh-list
Small powershell module to list stored ssh connections in ~/.ssh/config

## Install
- Put the files from this repo (`posh-ssh-list` folder) in `~\Documents\WindowsPowerShell\posh-ssh-list`
- Add this line to your `~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` file:
> `Import-Module -Name $env:USERPROFILE\Documents\WindowsPowerShell\posh-ssh-list\posh-ssh-list.psm1`

Now you can use `Read-SshConfig` to find your stored hosts.
