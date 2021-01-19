# CloudFormation documentation for a subscription (https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html)
Update-CFNStack -StackName snstopic -TemplateBody (Get-Content -Raw -Path $PSScriptRoot/template.v3.yml)

# Now we need to confirm the susbcription on the webhook site