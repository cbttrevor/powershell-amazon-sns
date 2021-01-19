# If you are updating an existing stack, use the Update-CFNStack command
Update-CFNStack -StackName snstopic -TemplateBody (Get-Content -Raw -Path $PSScriptRoot/template.v2.yml)