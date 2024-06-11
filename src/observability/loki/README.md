# Install alloy helm charts
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
kubectl create namespace observability
# helm upgrade --install --values loki.yaml loki --namespace=observability grafana/loki-stack
helm upgrade --install --values observability/loki/values.yaml loki --namespace=observability grafana/loki --create-namespace
```
