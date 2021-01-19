# Create a new topic
$TopicName = 'neworders'
New-SNSTopic -Name $TopicName

# NOTE: If the SNS topic already exists, you will not receive an exception

$OrdersTopic = Get-SNSTopic | Where-Object -FilterScript { $PSItem.TopicArn.Split(':')[-1] -eq $TopicName }

# Examine the details of the SNS topic
Get-SNSTopicAttribute -TopicArn $OrdersTopic.TopicArn

# Now we need to add one or more subscribers to the topic

Connect-SNSNotification -TopicArn $OrdersTopic.TopicArn -Protocol https -Endpoint https://webhook.site/5631b3b1-3e9b-45e2-9965-67c14dfc756f

# Status of subscription will change to confirmed here