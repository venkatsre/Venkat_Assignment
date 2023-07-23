provider "azurerm" {
  features {}
  subscription_id = "YOUR_SUBSCRIPTION_ID"
  client_id       = "YOUR_CLIENT_ID"
  client_secret   = "YOUR_CLIENT_SECRET"
  tenant_id       = "YOUR_TENANT_ID"
}

provider "helm" {
  kubernetes {
    config_path = "C:\\Users\\Administrator\\.kube\\config"  # Path to your kubeconfig file
  }
}

variable "mediawiki_chart" {
  default = "stable/mediawiki"
}

variable "mediawiki_password" {
  default = "TG1GdDhWalY2Yd=="  # Replace this with your desired MariaDB password
}

variable "allow_empty_password" {
  default = "no"  # Set to "no" or use a default value
}

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

resource "helm_release" "mediawiki" {
  name      = "mediawiki8"
  chart     = var.mediawiki_chart
  namespace = "default"

  set {
    name  = "mediawikiHost"
    value = "mediawiki"
  }

  set {
    name  = "mariadb.db.password"
    value = var.mediawiki_password
  }

  set {
    name  = "ALLOW_EMPTY_PASSWORD"
    value = var.allow_empty_password
  }
}
