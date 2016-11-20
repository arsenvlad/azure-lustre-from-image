Login-AzureRmAccount

Get-AzureRmSubscription
Select-AzureRmSubscription -SubscriptionName "Arsen Internal"

New-AzureRmResourceGroup -Name "avlustre1" -Location "westus"

New-AzureRmResourceGroupDeployment -ResourceGroupName "avlustre1" -TemplateFile "mainTemplate.json" -TemplateParameterFile "mainTemplate.parameters.json" -vnetResourceGroup "avlustre1" -publicIPAddressResourceGroup "avlustre1" -imageResourceGroup "avlustre1" -imageNewOrExisting new


