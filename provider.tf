terraform {
  required_version = ">= 1.0.0"
  required_providers {
    k3d = {
      source  = "pvotal-tech/k3d"
      version = "0.0.6"
    }
  }


}

provider "k3d" {
  # Configuration options
}