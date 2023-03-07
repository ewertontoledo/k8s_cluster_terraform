resource "null_resource" "context_k3d" {

  provisioner "local-exec" {

    command = "/bin/bash scripts/install_k3d.sh"
  }

  depends_on = [
    k3d_cluster.mycluster
  ]
}