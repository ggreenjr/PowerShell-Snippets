$db_array = @()

$databases = (Get-MailboxDatabase -Status)
ForEach ($db in $databases) {
$db_array += New-Object PsObject -Property @{
'DatabaseName' = $db.Name
'Mounted' = $db.Mounted
'Server' = $db.MountedOnServer
'DBPath' = $db.EdbFilePath
'LogPath' = $db.LogFolderPath
'CircularLogging' = $db.CircularLoggingEnabled
}
}
