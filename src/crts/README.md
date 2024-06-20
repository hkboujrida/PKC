```
step certificate create "My Root CA" root-ca.crt root-ca.key --profile root-ca --no-password --insecure
step certificate create "*.apps.edgeprime.intra" "*.apps.edgeprime.intra.crt" "*.apps.edgeprime.intra.key" --profile leaf --not-after 8760h --ca ./root-ca.crt --ca-key ./root-ca.key --no-password --insecure
```
