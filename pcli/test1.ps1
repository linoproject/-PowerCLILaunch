# TODO Change with credentials
$oData = Set-PowerCLIConfiguration -InvalidCertificateAction:Ignore -Confirm:$false
$oData = Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $true -Confirm:$false
$oServer = Connect-VIServer -Server "10.128.15.20" -Username "administrator@vsphere.local" -Password "SuperPass01!"
Get-VM | select Name, PowerState | ConvertTo-Json
Disconnect-VIServer -Server * -Force -Confirm:$false
