$sessions = (Get-PSSession | Where {$_.ConfigurationName -eq "Microsoft.Exchange"})
$sessions | ForEach-Object {
$sessionid = $_.id
Remove-PSSession $sessionid
}