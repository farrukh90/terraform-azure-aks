# This module creates Azure Kubernetes Services


```
provider "azurerm" {
  version = "=2.0.0"
  features {}
}
```
#### Create a file main.tf with below content
```
module "aks" {
    source                                  =   "farrukh90/aks/azure"
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
output "cluster_id" {
  value = module.aks.cluster_id
}
output "client_certificate" {
  value = module.aks.client_certificate
}

output "kube_config" {
  value = module.aks.kube_config
}

output "cluster_name" {
  value = module.aks.cluster_name
}

output "client_key" {
  value = module.aks.client_key
}

output "client_certificate_output" {
  value = module.aks.client_certificate_output
}

output "cluster_ca_certificate" {
  value = module.aks.cluster_ca_certificate
}

output "host" {
  value = module.aks.host
}

output "username" {
  value = module.aks.username
}

output "password" {
  value = module.aks.password
}

output "raw_kube_config" {
  value = module.aks.raw_kube_config
}

output "location" {
  value = module.aks.location
}

output "kube_config_raw" {
  value = module.aks.kube_config_raw
}
```
