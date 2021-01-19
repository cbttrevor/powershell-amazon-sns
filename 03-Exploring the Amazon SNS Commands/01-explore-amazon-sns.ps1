$ModuleList = Find-Module -Name AWS.Tools*

# You can explore the AWS.Tools interactively using Out-GridView or Out-ConsoleGridView
$ModuleList | Out-GridView -OutputMode Multiple | Install-Module -Scope CurrentUser -Force

$ModuleList | Out-ConsoleGridView -OutputMode Multiple

# Use the Select-Object command to filter down to properties that you care about
$ModuleList | Select-Object -Property Name, Version, Description, PublishDate | Out-ConsoleGridView

# Find the commands in the Amazon SNS PowerShell module (non-monolithic)
Get-Command -Module AWS.Tools.SimpleNotificationService | Out-ConsoleGridView
Get-Command -Module AWSPowerShell.NetCore -Name *-sns* | Out-ConsoleGridView

# Find the commands in the Amazon SNS PowerShell module (monolithic)
Get-Command -Module AWSPowerShell.NetCore -Name *-SNS* | Out-ConsoleGridView

# NOTE: Ignore the alias commands with an "s" at the end. These are only there for backward compatibility.
