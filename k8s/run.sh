

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config


wget https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml
kubectl apply -f kube-flannel.yml

kubectl taint nodes --all  node-role.kubernetes.io/control-plane-

### game 2048

wget https://raw.githubusercontent.com/vgaupset/dat515-k8s-a3/main/game-2048-example/kustomize/kustomization.yaml

mkdir resources
cd resources

wget https://raw.githubusercontent.com/vgaupset/dat515-k8s-a3/main/game-2048-example/kustomize/resources/service.yaml
wget https://raw.githubusercontent.com/vgaupset/dat515-k8s-a3/main/game-2048-example/kustomize/resources/deployment.yaml
wget https://raw.githubusercontent.com/vgaupset/dat515-k8s-a3/main/game-2048-example/kustomize/resources/namespace.yaml

cd .. 

kubectl apply -k .