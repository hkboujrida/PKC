# install kind

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.17.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# build cluster
kind create cluster --config kind-config.yaml --image kindest/node:v1.28.9


# install cilium
helm repo add cilium https://helm.cilium.io/
docker pull quay.io/cilium/cilium:v1.15.5
kind load docker-image quay.io/cilium/cilium:v1.15.5
helm upgrade --install --namespace kube-system --repo https://helm.cilium.io cilium cilium --values cilium.yaml

kubectl -n kube-system rollout restart deployment/cilium-operator
kubectl -n kube-system rollout restart ds/cilium

# install ingress
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml