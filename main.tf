module "aks" {
  source              = "./modules/aks"
  aks_cluster_name    = "my-aks-cluster"
  location            = "East US"
  resource_group_name = "my-resource-group"
  dns_prefix          = "myaks"
  vm_size             = "Standard_D2s_v3"
  node_count          = 2
  environment         = "dev"
}

module "node_pool" {
  source         = "./modules/node_pool"
  aks_id         = module.aks.aks_id
  node_pool_name = "autoscale"
  vm_size        = "Standard_D2s_v3"
  min_count      = 2
  max_count      = 5
}

module "mongodb" {
  source               = "./modules/mongodb"
  mongodb_release_name = "mongodb"
  namespace            = "mongodb"
  replica_count        = 3
  root_password        = "MongoDBRootPass123"
  username             = "admin"
  password             = "AdminPass123"
  database             = "mydatabase"
  storage_size         = "8Gi"
}
