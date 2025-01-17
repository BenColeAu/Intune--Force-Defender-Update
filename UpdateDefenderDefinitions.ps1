# Update MDE
Update-MPSignature
# Update Store Apps
Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod
# Start WU Check
Start-Process USOClient.exe -ArgumentList "StartInteractiveScan" -NoNewWindows -Wait
