
$discovered_dc = (Get-ADDomainController)
$discovered_domain = (Get-ADDomain)
[string]$ldap_prefix = "LDAP://"
[string]$ldap_port = $discovered_dc.LdapPort
[string]$domain_controller = $discovered_dc.HostName
[string]$domain_root = $discovered_domain.DistinguishedName
[string]$domain_netbios = $discovered_domain.NetBIOSName
[string]$ldap_server = ($domain_controller,$ldap_port -Join ":")
[string]$ldap_server = ($ldap_prefix,$ldap_server -Join "")
[string]$ldap_string = ($ldap_server,$domain_root -Join "/")
Do{
$credential = Get-Credential -Message "Administrative Credential for $domain_netbios Domain."
$username = $credential.username;
$password = $credential.GetNetworkCredential().Password;
$auth_check = (New-Object System.DirectoryServices.DirectoryEntry ($ldap_string,$username,$password)).psbase.name -ne $null
Switch ($auth_check) {
True {Write-Host "Credential authentication check for $domain_netbios domain succeeded.";Set-Variable -Name credential_verify -Value $true}
False {Write-Warning "Credential authentication check for $domain_netbios domain failed.  Please re-enter your credentials."}
Default {Write-Error "Unknown result from the $domain_netbios domain credential authentication check.";Exit}
}
}Until ($credential_verify -eq $true)
