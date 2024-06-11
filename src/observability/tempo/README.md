```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm upgrade --install tempo grafana/tempo-distributed --values observability/tempo/values.yaml --namespace observability --create-namespace

```