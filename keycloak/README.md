helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade --install keycloak bitnami/keycloak --version 21.4.1 --namespace keycloak --create-namespace --values values.yaml