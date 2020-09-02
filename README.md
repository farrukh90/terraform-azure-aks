# This module creates Azure Kubernetes Services


```
module "cluster" {
    source                                  =   "farrukh90/azure/aks"
    cluster_name                            =   "example-aks1"
    kubernetes_version                      =   "1.18.4"
    node_pool_name                          =   "node1"
    min_count                               =   "3"
    max_count                               =   "5"
    client_id                               =   ""
    client_secret                           =   ""
    environment                             =   "dev"
    resource_group_name_location            =   "West Europe"
    resource_group_name                     =   "dev"
    username                                =   "centos"
    vm_size                                 =   "Standard_A2_v2"
}
```


## Below is the output you can take
```
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
```