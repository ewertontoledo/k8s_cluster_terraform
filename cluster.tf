resource "k3d_cluster" "mycluster" {
  name    = "k8s-cluster-by-k3d"
  servers = 1
  agents  = 3 # Amount of node, except Control-Plane Master

  kube_api {
    host    = "localhost"
    host_ip = "127.0.0.1"
  }

  image   = "rancher/k3s:v1.23.14-k3s1"
  network = "my-custom-net"
  token   = "superSecretToken"

  runtime {
    gpu_request   = "all"
    agents_memory = "1024M" # Memory of each node
  }


  ## Optional configs

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
    update_default_kubeconfig = false
    switch_current_context    = false
  }


}