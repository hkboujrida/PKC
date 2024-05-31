# Install alloy helm charts
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
# kubectl create namespace observability
# helm upgrade --install --namespace observability alloy grafana/alloy --values values.yaml
helm upgrade --install grafana-k8s-monitoring --atomic --timeout 300s  grafana/k8s-monitoring --values values.yaml --namespace=observability

```
