helm repo add rancher-latest https://releases.rancher.com/server-charts/latest
helm upgrade --install rancher rancher-latest/rancher \
  --namespace cattle-system \
  --set hostname=rancher.apps.edgeprime.intra \
  --set bootstrapPassword=admin \
  --create-namespace


  echo "https://rancher.apps.edgeprime.intra/dashboard/?setup=$(kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}')"