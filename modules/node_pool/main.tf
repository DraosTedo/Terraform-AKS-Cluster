resource "azurerm_kubernetes_cluster_node_pool" "autoscale_pool" {
  name                  = var.node_pool_name
  kubernetes_cluster_id = var.aks_id
  vm_size               = var.vm_size
  enable_auto_scaling   = true
  min_count             = var.min_count
  max_count             = var.max_count
  mode                  = "User"

  node_labels = {
    role = "worker"
  }
}