$db_info = @()

$databases = (Get-MailboxDatabase -Status)
ForEach ($db in $databases) {
    $dbsize_string = ($db.DatabaseSize -replace "(.*\()|,| [a-z]*\)", "")
    $dbsize_int = [convert]::ToInt64($dbsize_string,10)
    $dbsize_gb = [math]::truncate($dbsize_int/1GB)
    $dbspace_string = ($db.AvailableNewMailboxSpace -replace "(.*\()|,| [a-z]*\)", "")
    $dbspace_int = [convert]::ToInt64($whitespace_string,10)
    $dbspace_gb = [math]::truncate($whitespace_int/1GB)
    $db_info += New-Object PsObject -Property @{
        'DatabaseName' = $db.Name
        'Mounted' = $db.Mounted
        'DatabaseSize' = $dbsize_int
        'DatabaseSizeGB' = $dbsize_gb
        'DatabaseSpace' = $dbspace_int
        'DatabaseSpaceGB' = $dbspace_gb
        'Server' = $db.MountedOnServer
        'DBPath' = $db.EdbFilePath
        'LogPath' = $db.LogFolderPath
        'CircularLogging' = $db.CircularLoggingEnabled
    }
}
