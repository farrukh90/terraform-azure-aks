resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_name_location
}
resource "azurerm_kubernetes_cluster" "example" {
  depends_on    = [azurerm_resource_group.example]
  name                = var.cluster_name
  location            = var.resource_group_name_location
  resource_group_name = var.resource_group_name
  dns_prefix          = "exampleaks1"
  kubernetes_version  = var.kubernetes_version
  linux_profile {
    admin_username = var.username
    ssh_key {
      key_data = file("~/.ssh/id_rsa.pub")
    }
  }
  default_node_pool {
    name       = var.node_pool_name
    vm_size    = var.vm_size
    enable_auto_scaling = true
    max_count = var.max_count
    min_count = var.min_count
  }
  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
  tags = {
    Environment = var.environment
  }
}