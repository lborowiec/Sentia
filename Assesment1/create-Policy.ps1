#armclient GET /subscriptions?api-version=2014-04-01
$SubscriptionID = "a5078306-f9fa-4721-865a-6c942c7e1eb2"
$ResourceDefinitionFile = ".\Policy.json"

$APIVersion = "2016-12-01"
$ResourcePath = "providers/Microsoft.Authorization/policyDefinitions"

ARMClient.exe clearcache
$ResourceName = (Get-Content -Raw -Path $ResourceDefinitionFile | ConvertFrom-Json).properties.displayName
ARMCLient PUT "/subscriptions/$SubscriptionID/$ResourcePath/$ResourceName\?api-version=$APIVersion" "@$ResourceDefinitionFile"
ARMClient.exe clearcache
