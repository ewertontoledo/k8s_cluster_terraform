# Deploy a Kubernetes Cluster using Terraform [***Only for studies***]

## Requirements

- Terraform >= 1.0.0
- Docker 
- Kubectl
- K3d (Optional) - *Will be installed during terraform execution.*

## Using...

>1- Clone this repo into your machine.

>2- Allow shell script execution and exec without password during 'terraform apply'
```
chmod +x scripts/install_k3d.sh
sudo chown root scripts/install_k3d.sh
sudo chmod 4755 scripts/install_k3d.sh


terraform init
terraform plan
terraform apply

export KUBECTL=(path kubeconfig)**
```
**
***path kubeconfig, usually "home/.k3d/"***

> *example: export KUBECONFIG=~/.k3d/kubeconfig-k8s-cluster-by-k3d.yaml*


## Checking..

```
kubectl get nodes
```

## Testing application in your cluster..

```
cd k8s

kubectl apply -f .
```

**In your browser > http://localhost:8000**


<br>

> enjoy!
