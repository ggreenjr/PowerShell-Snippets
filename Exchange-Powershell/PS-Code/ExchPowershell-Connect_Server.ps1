$exch_server "<Exchange FQDN>"
$user_credential = (Get-Credential -Message "Exchange Administrative Credential")
$session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://$exch_server/powershell/ -Credential $user_credential -Authentication Kerberos
Import-PSSession $session