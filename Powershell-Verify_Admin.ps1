If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) 
{
Write-Warning "This script is not running this as an Administrator.  Please re-run this under an Administrator UAC context."
Break 
}
