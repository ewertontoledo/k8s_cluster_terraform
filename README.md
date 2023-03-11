# To Build a Kubernetes cluster, construct by Terraform [***Only for studies***]

## Requirements

- Terraform >= 1.0.0
- Docker 
- Kubectl
- K3d (Opcional) - *Será instalado durante a execução do terraform*

## Using...

> git clone url_repo

```> cd k8s_/scripts

chmod +x ./scripts/install_k3d.sh

terraform init
terraform plan
terraform apply

export KUBECTL=(path kubeconfig)**
```


**
***path kubeconfig, usually "home/.k3d/"***

```
kubectl get nodes
```

> enjoy! 