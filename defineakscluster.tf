resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-cluster-name"
  location            = "East US"  # Change to your desired region
  resource_group_name = "resource-group-name"
  dns_prefix          = "unique-dns-prefix"  # Change to a unique DNS prefix
  kubernetes_version  = "1.21.1"  # Change to the desired Kubernetes version
  node_resource_group = "aks-node-resource-group"
  tags = {
    environment = "dev"
  }

  default_node_pool {
    name       = "default"
    node_count = 1  # Change the number of nodes as needed
    vm_size    = "Standard_DS2_v2"  # Change to your desired VM size
  }

  service_principal {
    client_id     = "YOUR_AKS_CLIENT_ID"
    client_secret = "YOUR_AKS_CLIENT_SECRET"
  }
}