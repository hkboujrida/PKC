# install kind

```bash
brew install kind
```

# build cluster
    
```bash
kind create cluster --config kind/kind-config.yaml  #--image kindest/node:v1.28.9
```
# kind config
```yaml
--8<-- "src/kind/kind-config.yaml"
```