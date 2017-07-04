$array = @()

$databases = (Get-MailboxDatabase -Status)
$databases | ForEach-Object{
$dbname = $_.Name
$mounted = $_.Mounted
$dbsize_string = ($_.DatabaseSize -replace "(.*\()|,| [a-z]*\)", "")
$dbsize_int = [convert]::ToInt64($dbsize_string,10)
$dbsize_gb = [math]::truncate($dbsize_int/1GB)
$whitespace_string = ($_.AvailableNewMailboxSpace -replace "(.*\()|,| [a-z]*\)", "")
$whitespace_int = [convert]::ToInt64($whitespace_string,10)
$whitespace_gb = [math]::truncate($whitespace_int/1GB)
$array += New-Object PsObject -Property @{
'DatabaseName' = $dbname
'Mounted' = $mounted
'DBSizeGB' = $dbsize_gb
'DBWhitespaceGB' = $whitespace_gb
}
}

$array | Sort-Object DatabaseName | Format-Table DatabaseName,Mounted,DBSizeGB,DBWhitespaceGB -Auto