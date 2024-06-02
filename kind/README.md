# install kind

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.17.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# build cluster
kind create cluster --config kind-config.yaml --image kindest/node:v1.28.9
