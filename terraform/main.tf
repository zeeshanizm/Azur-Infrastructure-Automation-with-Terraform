resource "azurerm_resource_group" "demo" { name = "${var.prefix}-rg"; location = var.location }
resource "azurerm_virtual_network" "demo" {
  name = "${var.prefix}-vnet"; location = var.location; resource_group_name = azurerm_resource_group.demo.name
  address_space = ["10.40.0.0/16"]
}
resource "azurerm_subnet" "aks" {
  name = "aks"; resource_group_name = azurerm_resource_group.demo.name
  virtual_network_name = azurerm_virtual_network.demo.name; address_prefixes = ["10.40.1.0/24"]
}
resource "azurerm_kubernetes_cluster" "demo" {
  name = "${var.prefix}-aks"; location = var.location; resource_group_name = azurerm_resource_group.demo.name
  dns_prefix = "${var.prefix}-aks"
  default_node_pool { name = "system"; node_count = 1; vm_size = "Standard_D2s_v3"; vnet_subnet_id = azurerm_subnet.aks.id }
  identity { type = "SystemAssigned" }
  linux_profile { admin_username = "azureuser"; ssh_key { key_data = var.ssh_public_key } }
  network_profile { network_plugin = "azure" }
}
