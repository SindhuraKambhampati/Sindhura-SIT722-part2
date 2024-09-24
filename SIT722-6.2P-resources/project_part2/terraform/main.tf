provider "azurerm" {
  features = {}
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "myAKSCluster"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "myaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }
}

resource "azurerm_postgresql_server" "postgres" {
  name                = "mypostgres"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "B_Gen5_2"
  storage_mb          = 5120
  administrator_login = "adminuser"
  administrator_login_password = "P@ssw0rd123"
  version             = "11"
}

# Create resource group
resource "azurerm_resource_group" "rg" {
  name     = "myResourceGroup"
  location = var.location
}
