$env:TERRAGRUNT_DOWNLOAD = 'C:\.terragrunt_cache'
$terragruntLivePath = "C:\Users\awilkinson\terraform\infrastructure-live\main-account\westus2\dv1\CampaignManagementFunction2\FunctionApp"
$terragruntSourcePath = "C:\Users\awilkinson\terraform\infrastructure-modules\\azurerm-dotnet-functionapp"
Set-Location -Path $terragruntLivePath
terragrunt init --terragrunt-source $terragruntSourcePath --terragrunt-source-update
terragrunt hclfmt --terragrunt-source $terragruntSourcePath --terragrunt-source-update
terragrunt hclfmt --terragrunt-source $terragruntSourcePath --terragrunt-source-update --terragrunt-check
terragrunt validate --terragrunt-source $terragruntSourcePath --terragrunt-source-update
terragrunt plan --terragrunt-source $terragruntSourcePath --terragrunt-source-update
terragrunt apply --terragrunt-source $terragruntSourcePath --terragrunt-source-update
# terragrunt destroy --terragrunt-source $terragruntSourcePath --terragrunt-source-update

