```bash
helm repo add longhorn https://charts.longhorn.io
helm repo update
helm upgrade --install longhorn longhorn/longhorn --namespace longhorn-system --create-namespace --version 1.6.2 --values values.yaml
kubectl -n longhorn-system get pod
```