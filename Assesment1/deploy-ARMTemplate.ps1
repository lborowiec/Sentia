$Template = ".\ARMTemplate.json"
$Params = ".\ARMTemplate.parameters.json"

Connect-AzAccount
Get-AzSubscription -SubscriptionName "Free Trial" | Select-AzSubscription
New-AzDeployment -Location "westeurope" -TemplateFile $Template -TemplateParameterFile $Params
Disconnect-AzAccount

