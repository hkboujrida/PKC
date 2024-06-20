```bash
helm upgrade --install grafana grafana/grafana --namespace=observability --values observability/grafana/values.yaml --create-namespace
kubectl label namespace observability autocert.step.sm=enabled
```
