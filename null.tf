resource "null_resource" "authenticate" {
    depends_on  =   [
        azurerm_kubernetes_cluster.example,
        azurerm_resource_group.example
    ]
    provisioner "local-exec" {
        command = "az aks get-credentials --resource-group ${azurerm_resource_group.example.name} --name ${azurerm_kubernetes_cluster.example.name}"
    }
  
}


resource "null_resource" "nodes" {
    depends_on = [
        null_resource.authenticate
    ]
    provisioner "local-exec" {
        command = "kubectl get nodes"
    }
  
}