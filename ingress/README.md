```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm -n ingress-nginx upgrade --install ingress-nginx ingress-nginx/ingress-nginx --create-namespace --values ingress/values.yaml
```