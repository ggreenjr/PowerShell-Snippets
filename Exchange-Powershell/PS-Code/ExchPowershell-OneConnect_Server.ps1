$exch_server "<Exchange FQDN>"
$connection_state = (Get-PSSession | Where {$_.ConfigurationName -eq "Microsoft.Exchange"}).State

if ($connection_state -ne "Opened") {
$user_credential = Get-Credential -Message "Exchange Administrative Credential"
$session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://$exch_server/powershell/ -Credential $user_credential -Authentication Kerberos -AllowRedirection
Import-PSSession $session
Set-Variable -Name newconnection -Value Yes
}
