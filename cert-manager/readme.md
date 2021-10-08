step certificate create root.hbinsight.local ca.crt ca.key --profile root-ca --no-password --insecure

curl -sL run.linkerd.io/emojivoto.yml | kubectl apply -f -
