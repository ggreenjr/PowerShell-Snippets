function Test-Credential {
$credential = (Get-Credential -Message "AD credentials to test")
$username = $credential.username
$password = $credential.GetNetworkCredential().Password
$auth_check = (New-Object directoryservices.directoryentry "",$username,$password).psbase.name -ne $null

Switch ($auth_check) {
True {Write-Host "Active Directory authentication check succeeded." -Foregroundcolor Green}
False {Write-Host "Active Directory authentication check failed." -Foregroundcolor Red}
Default {Write-Host "Unknown result from the authentication check." -Foregroundcolor Yellow}
}
}

