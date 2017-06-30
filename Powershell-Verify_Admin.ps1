
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) 
{
Write-Warning "You are not running this as an Administrator.  Please re-run this with an Administrator account."
Break 
}
