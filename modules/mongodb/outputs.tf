output "mongodb_uri" {
  value       = "mongodb://${var.username}:${var.password}@mongodb.${var.namespace}.svc.cluster.local:27017/${var.database}"
  sensitive   = true
}
