$array = @()

$databases = (Get-MailboxDatabase -Status)
$databases | ForEach-Object {
$dbname = $_.Name
$mounted = $_.Mounted
$dbserver = $_.MountedOnServer
$dbpath = $_.EdbFilePath
$logpath = $_.LogFolderPath
$circularlogging = $_.CircularLoggingEnabled
$array += New-Object PsObject -Property @{
'DatabaseName' = $dbname
'Mounted' = $mounted
'Server' = $dbserver
'DBPath' = $dbpath
'LogPath' = $logpath
'CircularLogging' = $circularlogging
}
}

$array | Sort-Object DatabaseName | Format-Table DatabaseName,Mounted,Server,DBPath,LogPath -Auto