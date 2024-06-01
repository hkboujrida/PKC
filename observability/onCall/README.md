helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install \
    --wait \
    release-oncall \
    grafana/oncall --namespace=observability --create-namespace --values values.yaml

