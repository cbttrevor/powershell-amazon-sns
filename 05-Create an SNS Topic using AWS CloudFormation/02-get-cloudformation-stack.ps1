# Get the status of the CloudFormation stack
Get-CFNStack -StackName snstopic

# Examine all of the cloud resources provisioned by the CloudFormation stack
# In this case, we only have a single resource, but you could have more.
Get-CFNStackResourceList -StackName snstopic
Get-CFNStackResource -StackName snstopic

# Verify that the SNS topic has been created
Get-SNSTopic

# Validate the tags on the SNS topic
Get-SNSResourceTag -ResourceArn arn:aws:sns:us-west-2:665453315198:trevorsns12345