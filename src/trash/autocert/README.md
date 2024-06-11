```bash
helm repo add smallstep https://smallstep.github.io/helm-charts/
helm upgrade --install autocert smallstep/autocert --version 1.19.0 --namespace=smallstep --create-namespace --values values.yaml
```


https://smallstep.com/docs/certificate-manager/kubernetes-autocert/#before-you-begin
kubectl label namespace default autocert.step.sm=enabled