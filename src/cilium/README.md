# build cluster
```bash
kind create cluster --config kind-config.yaml --image kindest/node:v1.28.9
```

# install cilium
```bash
helm repo add cilium https://helm.cilium.io/
docker pull quay.io/cilium/cilium:v1.15.5
kind load docker-image quay.io/cilium/cilium:v1.15.5
helm upgrade --install --namespace kube-system --repo https://helm.cilium.io cilium cilium --values cilium/cilium.yaml

kubectl -n kube-system rollout restart deployment/cilium-operator
kubectl -n kube-system rollout restart ds/cilium
```