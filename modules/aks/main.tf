resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    vm_size    = var.vm_size
    node_count = var.node_count 
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = var.environment
  }
}
