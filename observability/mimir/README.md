# Install alloy helm charts
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
kubectl create namespace observability
# extract values.yaml

helm show values grafana/mimir-distributed > values.yaml

helm upgrade --install mimir --namespace=observability grafana/mimir-distributed --values values.yaml --create-namespace
```
