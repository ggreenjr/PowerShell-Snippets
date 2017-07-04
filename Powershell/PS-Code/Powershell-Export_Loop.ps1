$filewrite = "This is a file write test"

{
$i = 1
Do {
$a = "NoError"
Try {$filewrite | Export-Csv -Path $outfile -NoTypeInformation}
Catch {[System.IO.IOException] | Out-Null ;$a="Error";Write-Host "Failed Write $i";Start-Sleep -Seconds 5}
$i++
}While ($a -eq "Error")
}
