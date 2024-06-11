```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm upgrade --install prom-operator prometheus-community/prometheus-operator-crds --namespace=observability --create-namespace
```