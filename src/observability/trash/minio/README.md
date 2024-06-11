```bash
helm repo add minio-operator https://operator.min.io
helm search repo minio-operator
helm upgrade --install \
  --namespace observability \
  --create-namespace \
  minio minio-operator/tenant --values values.yaml
```