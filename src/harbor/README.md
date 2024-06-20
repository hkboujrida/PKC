```bash
helm repo add harbor https://helm.goharbor.io
helm repo update
helm upgrade --install harbor harbor/harbor --version 1.6.0 --namespace harbor --create-namespace --values harbor/values.yaml

``` 