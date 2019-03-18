#armclient GET /subscriptions?api-version=2014-04-01
$SubscriptionID = "a5078306-f9fa-4721-865a-6c942c7e1eb2"
$PolicyName = "Allowed resource types"
$ResourceGroupName ="ResourceGroup1"

ARMClient.exe clearcache
#Assign policy to Resource group
$PolicyAssignmentDefinition = "{
    'properties': {
        'description': 'This policy assignment limits deployment of resources to only allowed types.',
        'displayName': '$PolicyName',
        'parameters': {},
        'policyDefinitionId': '/subscriptions/$SubscriptionID/providers/Microsoft.Authorization/policyDefinitions/$PolicyName',
        'scope': '/subscriptions/$SubscriptionID/resourceGroups/$ResourceGroupName'
    }
}"
$PolicyAssignmentDefinition|armclient PUT "/subscriptions/$SubscriptionID/resourceGroups/$ResourceGroupName/providers/Microsoft.Authorization/policyAssignments/$PolicyName\?api-version=2019-01-01"

#Assign policy to Subscription
$PolicyAssignmentDefinition = "{
    'properties': {
        'description': 'This policy assignment limits deployment of resources to only allowed types.',
        'displayName': '$PolicyName',
        'parameters': {},
        'policyDefinitionId': '/subscriptions/$SubscriptionID/providers/Microsoft.Authorization/policyDefinitions/$PolicyName',
        'scope': '/subscriptions/$SubscriptionID'
    }
}"

$PolicyAssignmentDefinition|armclient PUT "/subscriptions/$SubscriptionID/providers/Microsoft.Authorization/policyAssignments/$PolicyName\?api-version=2019-01-01"
ARMClient.exe clearcache
