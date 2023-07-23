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
