helm repo add hashicorp https://helm.releases.hashicorp.com
helm search repo hashicorp/vault

helm upgrade --install vault hashicorp/vault --version 0.28.0 --namespace vault --create-namespace --values values.yaml


vault login token=$(kubectl get secret vault-unseal-keys -o jsonpath="{.data.vault-root}" | base64 --decode)
  vault auth enable oidc


  vault write auth/oidc/config \
      oidc_discovery_url="http://keycloak.keycloak/realms/master" \
      oidc_client_id="vault-oauth" \
      oidc_client_secret="" \
      default_role="your-default-role"


  vault write auth/oidc/role/your-default-role \
      user_claim="sub" \
      allowed_redirect_uris="http://vault.127.0.0.1.nip.io/ui/vault/auth/oidc/oidc/callback" \
      policies="policy1,policy2"
