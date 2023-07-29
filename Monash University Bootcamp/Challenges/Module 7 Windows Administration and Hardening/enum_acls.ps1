$directory = Get-ChildItem

foreach ($item in $directory) {
    Write-Output 'ACL Results for '$item': '
    Get-ACL $item | Format-List
    
}

Write-Output 'ACL Exported Successfully of below files: '$directory''
