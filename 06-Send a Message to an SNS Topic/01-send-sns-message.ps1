# Look for a command to send an SNS message
Get-Command -Name *-sns*

$OrderDetail = @{
    orderid = (New-Guid).Guid
    name = 'Trevor Sullivan'
    date = (Get-Date -Format u -AsUTC)
} | ConvertTo-Json -Compress
Publish-SNSMessage -Message $OrderDetail -TopicArn arn:aws:sns:us-west-2:665453315198:trevorsns12345

# Reference documentation for AWS APIs is essential for understanding input parameters
# Each AWS PowerShell command maps to a specific API operation

# Documentation for Publish API call
# https://docs.aws.amazon.com/sns/latest/api/API_Publish.html