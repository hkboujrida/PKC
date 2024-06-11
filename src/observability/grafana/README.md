helm upgrade --install grafana grafana/grafana --namespace=observability --values values.yaml --create-namespace
kubectl label namespace observability autocert.step.sm=enabled
```
