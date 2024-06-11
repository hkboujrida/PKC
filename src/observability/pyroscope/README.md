```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install pyroscope grafana/pyroscope -f observability/pyroscope/values.yaml --namespace observability --create-namespace


