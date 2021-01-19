Connect-SNSNotification 

Publish-SNSMessage -MessageAttribute @{
    FirstName = 'Trevor'
} -Message 'New order' -TopicArn arn:aws:sns:us-west-2:665453315198:trevorsns12345