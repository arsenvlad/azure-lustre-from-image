# Azure PowerShell
Login-AzureRmAccount
Get-AzureRmSubscription
Select-AzureRmSubscription -SubscriptionName "Arsen Internal"
New-AzureRmResourceGroup -Name "avlustre1" -Location "westus"
New-AzureRmResourceGroupDeployment -ResourceGroupName "avlustre1" -TemplateFile "mainTemplate.json" -TemplateParameterFile "mainTemplate.parameters.json" -vnetResourceGroup "avlustre1" -publicIPAddressResourceGroup "avlustre1" -imageResourceGroup "avlustre1" -imageNewOrExisting new

# Azure CLI 2.0
az account set --subscription "Arsen Internal"
az group list
az group create --location "westus" --name "avlustre1"
az group deployment create --resource-group "avlustre1" --template-file "mainTemplate.json" --parameters @mainTemplate.parameters.json --parameters ossDiskCount=5
