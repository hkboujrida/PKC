helm repo add rancher-latest https://releases.rancher.com/server-charts/latest
helm upgrade --install rancher rancher-latest/rancher \
  --namespace cattle-system \
  --set hostname=rancher.127.0.0.1.nip.io \
  --set bootstrapPassword=admin \
  --create-namespace


  echo "https://rancher.127.0.0.1.nip.io/dashboard/?setup=$(kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}')"