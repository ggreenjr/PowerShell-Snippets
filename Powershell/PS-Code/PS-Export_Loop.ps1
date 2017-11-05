[string]$outfile = "Output:\outfile.csv"
[string]$filewrite = "This is a file write test"
[int]$failed_write_attempt = 1
Do {
    [string]$error_status = "NoError"
    Try {$filewrite | Export-Csv -Path $outfile -NoTypeInformation}
    Catch {$error_status="Error";Write-Warning "Failed Write $failed_write_attempt";Start-Sleep -Seconds 5}
    $failed_write_attempt++
}While ($error_status -eq "Error")