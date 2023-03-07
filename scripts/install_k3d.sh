#!/bin/bash
CLUSTER="k8s-cluster-by-k3d"
K8S="kubeconfig"

# Install k3d
sudo wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

# Create and config kubectl context
K3DPATH=$HOME/.k3d/

cd $K3DPATH && k3d $K8S write $CLUSTER

k3d $K8S merge $CLUSTER --output "$K3DPATH/$K8S-$CLUSTER.yaml"

export KUBECONFIG="$K3DPATH/$K8S-$CLUSTER.yaml"