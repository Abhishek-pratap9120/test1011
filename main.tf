resource "azurerm_resource_group" "rgtest" {
    name="rg121"
    location="central india" 
}

resource "azurerm_storage_account" "sg" {
    name = "sg121"
    resource_group_name = azurerm_resource_group.rgtest.name
    location = azurerm_resource_group.rgtest.location
    account_tier = "Standard"
    account_replication_type = "GRS"
  
}