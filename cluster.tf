resource "k3d_cluster" "mycluster" {
  name    = "k3d-terraform"
  servers = 1
  agents  = 2

  kube_api {
    host      = "localhost"
    host_ip   = "127.0.0.1"
  }

  image   = "rancher/k3s:v1.23.14-k3s1"
  network = "my-custom-net"
  token   = "superSecretToken"

  port {
    host_port      = 8000
    container_port = 30000
    node_filters = [
      "loadbalancer",
    ]
  }

  k3d {
    disable_load_balancer = false
    disable_image_volume  = false
  }

  kubeconfig {
    update_default_kubeconfig = true
    switch_current_context    = true
  }

  runtime {
    gpu_request = "all"
    agents_memory = "1024M"
  }
}