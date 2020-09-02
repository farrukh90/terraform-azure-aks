output "client_certificate" {
  value = azurerm_kubernetes_cluster.example.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw
}
output "cluster_id" {
  value = azurerm_kubernetes_cluster.example.id
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.example.name
}

output "client_key" {
  value = azurerm_kubernetes_cluster.example.kube_config[0].client_key
}

output "client_certificate_output" {
  value = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
}

output "cluster_ca_certificate" {
  value = azurerm_kubernetes_cluster.example.kube_config[0].cluster_ca_certificate
}

output "host" {
  value = azurerm_kubernetes_cluster.example.kube_config[0].host
}

output "username" {
  value = azurerm_kubernetes_cluster.example.kube_config[0].username
}

output "password" {
  value = azurerm_kubernetes_cluster.example.kube_config[0].password
}

output "raw_kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw
}

output "location" {
  value = azurerm_kubernetes_cluster.example.location
}

output "kube_config_raw" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw
}