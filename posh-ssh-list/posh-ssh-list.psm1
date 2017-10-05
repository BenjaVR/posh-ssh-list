function Read-SshConfig {
	param(
		[string] $SshConfigFilePath = [io.path]::combine($env:USERPROFILE, '.ssh', 'config'),
		[switch] $ShowFullFile = $false
	)

	$content = (Get-Content $SshConfigFilePath -Raw | Out-String)	

	Write-Output `n
	if ($ShowFullFile) {
		Write-Output $content
	} else {
		Write-Output ($content | Select-String '(?<=Host\s).+' -AllMatches |
			Foreach {$_.Matches} | Foreach {$_.Value})
	}
	Write-Output `n
}
Export-ModuleMember -Function Read-SshConfig
