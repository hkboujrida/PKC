step certificate create root.hbinsight.local ca.crt ca.key --profile root-ca --no-password --insecure

curl -sL run.linkerd.io/emojivoto.yml | kubectl apply -f -


helm repo add jetstack https://charts.jetstack.io --force-update
helm repo update

helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.14.5 \
  --set installCRDs=true


  helm upgrade trust-manager jetstack/trust-manager \
  --install \
  --namespace cert-manager \
  --wait