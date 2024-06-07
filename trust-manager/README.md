# Run this command only if you haven't installed cert-manager already
helm install cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.15.0 \
  --set crds.enabled=true



  helm upgrade trust-manager jetstack/trust-manager \
  --install \
  --namespace cert-manager \
  --wait