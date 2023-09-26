#! /bin/bash




kubectl apply -f kube-flannel.yml

kubectl taint nodes --all  node-role.kubernetes.io/control-plane-

### game 2048


kubectl apply -k .