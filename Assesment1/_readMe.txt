Assumptions\Comments:
- no naming convention has been provided, used ResourceGroup1, VNet1, etc.
- location was provided only for Resource Group, deployed all the resources in that location
- storage type not provided, used LRS
- storage encryption is enabled by default, didn't include any additional config for it
- no subnet split has been provided, used 3 subnets with /24 masks, rest left for future use:)
- ARMClient is used to deploy policy template via REST API

Time LOG

Tuesday 11th of March - 2 hours - created ARM template
Sunday 17th oF March - 2 hours - created API deployment file
Sunday 17th oF March - 1 hour - converted ARM template to nested template to include Resource Group creation
Monday 18th of march - 1 hour - testing and commit to Github