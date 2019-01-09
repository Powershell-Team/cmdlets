function get-LastReboot { 
param(
[parameter(mandatory=$true)]
[string]$ComputerName
)

$myData = (Get-WmiObject -Class win32_operatingsystem -ComputerName $ComputerName).ConverttoDateTime((Get-WmiObject -Class win32_Operatingsystem -ComputerName $ComputerName).LastBootUpTime)
Write-Host $myData
}
