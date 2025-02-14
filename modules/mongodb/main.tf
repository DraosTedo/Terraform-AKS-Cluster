resource "helm_release" "mongodb" {
  name       = var.mongodb_release_name
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mongodb"
  namespace  = var.namespace

  create_namespace = true

  set {
    name  = "architecture"
    value = "replicaset"
  }

  set {
    name  = "replicaCount"
    value = var.replica_count
  }

  set {
    name  = "auth.rootPassword"
    value = var.root_password
  }

  set {
    name  = "auth.username"
    value = var.username
  }

  set {
    name  = "auth.password"
    value = var.password
  }

  set {
    name  = "auth.database"
    value = var.database
  }

  set {
    name  = "persistence.size"
    value = var.storage_size
  }
}
