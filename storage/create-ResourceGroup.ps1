# create a Resource Group in a specified region
New-AzureRmResourceGroup -Name ExampleResourceGroup -Location "South Central US"
New-AzureRmResourceGroup -Name PracticeResourceGroup -Location "South Central US"

# delete a Resource Group
Remove-AzureRmResourceGroup -Name ExampleResourceGroup

# create a deployment
New-AzureRmResourceGroupDeployment -Name ExampleDeploymentLocal -ResourceGroupName ExampleResourceGroup `
  -TemplateFile c:\dev\projects\azure\storage\azuredeploy.json `
  -TemplateParameterFile c:\dev\projects\azure\storage\azuredeploy.parameters.json

New-AzureRmResourceGroupDeployment -Name ExampleDeploymentAzure -ResourceGroupName ExampleResourceGroup `
  -TemplateUri https://cs2b2fe62f48707x4df4x8c2.blob.core.windows.net/templates/azuredeploy.json `
  -TemplateParameterUri https://cs2b2fe62f48707x4df4x8c2.blob.core.windows.net/templates/azuredeploy.parameters.json

# delete a storage account
Get-AzureRmStorageAccount -ResourceGroupName ExampleResourceGroup
Remove-AzureRmStorageAccount -Name fipsxg2nlm2hustandardsa -ResourceGroupName ExampleResourceGroup

# start a vm
$RGName = "PracticeResourceGroup"
$VMName = "w000002"
Get-AzureRmVM -ResourceGroupName $RGName | Select Name
Start-AzureRmVM -ResourceGroupName $RGName -Name $VMName
Stop-AzureRmVM -ResourceGroupName $RGName -Name $VMName

Get-AzureRmNetworkInterface -Name $VMName -ResourceGroupName $RGName
