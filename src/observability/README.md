helm repo add prometheus-community https://prometheus-community.github.io/helm-charts


helm upgrade --install kube-prometheus-stack prometheus-community/kube-prometheus-stack