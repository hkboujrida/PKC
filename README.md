
# PKC (Perfect Kubernetes Cluster)

This repository is a collection of scripts and configurations to create the perfect Kubernetes cluster. Build around a curated list of products and tools from the [CNCF landscape](https://landscape.cncf.io/).

This repository is a work in progress and will be updated regularly.

The list of tools and products used are personal preferences and can be changed to fit your needs.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [helm](https://helm.sh/docs/intro/install/)
- [kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
- [vscode](https://code.visualstudio.com/)
- [krew](https://krew.sigs.k8s.io/docs/user-guide/setup/install/)
- [homebrew](https://brew.sh/)
- [k9s](https://k9scli.io/topics/install/)

You can use homebrew to install most of the tools.

## what's on the menu

- Application Definition & Image Build
    - [Helm](https://landscape.cncf.io/?item=app-definition-and-development--application-definition-image-build--helm)
    - [Operator Framework](https://landscape.cncf.io/?item=app-definition-and-development--application-definition-image-build--operator-framework)
    - [KubeVirt](https://landscape.cncf.io/?item=app-definition-and-development--application-definition-image-build--kubevirt)
- Continuous Integration & Delivery
    - [Argo CD](https://landscape.cncf.io/?item=ci-cd--continuous-integration-delivery--argo-cd)

- Database
    - [Crunchy Postgres Operator](https://landscape.cncf.io/?item=app-definition-and-development--database--crunchy-postgres-operator)
- Streaming & Messaging
    - [CloudEvents](https://landscape.cncf.io/?item=app-definition-and-development--streaming-messaging--cloudevents)
- Scheduling & Orchestration
    - [Knative](https://landscape.cncf.io/?item=orchestration-management--scheduling-orchestration--knative)
    - [Kubeflow](https://landscape.cncf.io/?item=orchestration-management--scheduling-orchestration--kubeflow)

- Service Mesh
    - [Linkerd](https://landscape.cncf.io/?item=orchestration-management--service-mesh--linkerd)
- Coordination & Service Discovery
    - [coreDNS](https://landscape.cncf.io/?item=orchestration-management--coordination-service-discovery--coredns)

- Service Proxy
    - [Nginx](https://landscape.cncf.io/?item=orchestration-management--service-proxy--nginx)
- Cloud Native Storage
    - [Longhorn](https://landscape.cncf.io/?item=runtime--cloud-native-storage--longhorn)

- Cloud Native Network
    - [Cilium](https://landscape.cncf.io/?item=runtime--cloud-native-network--cilium)

- Container Runtime
    - [containerd](https://landscape.cncf.io/?item=runtime--container-runtime--containerd)
- Security & Compliance
    - [Cert-Manager](https://landscape.cncf.io/?item=provisioning--security-compliance--cert-manager)
    - [Keycloak](https://landscape.cncf.io/?item=provisioning--security-compliance--keycloak)
- Container Registry
    - [Harbor](https://landscape.cncf.io/?item=provisioning--container-registry--harbor)
- Observability
    - [Prometheus](https://landscape.cncf.io/?item=observability-and-analysis--observability--prometheus)
    - [Grafana](https://landscape.cncf.io/?item=observability-and-analysis--observability--grafana)
    - [Loki](https://landscape.cncf.io/?item=observability-and-analysis--observability--grafana-loki)
    - [Tempo](https://landscape.cncf.io/?item=observability-and-analysis--observability--grafana-tempo)
    - [Mimir](https://landscape.cncf.io/?item=observability-and-analysis--observability--grafana-mimir)
    - [Pyroscope](https://landscape.cncf.io/?item=observability-and-analysis--observability--grafana-pyroscope)




# install mkdocs-material

```bash
pyhton3 -m venv .env
source .env/bin/activate
pip install mkdocs-material
```


kubectl patch storageclass local-path -p '{"metadata": {"annotations": {"storageclass.kubernetes.io/is-default-class":"false"}}}'


https://epam.github.io/edp-install/operator-guide/