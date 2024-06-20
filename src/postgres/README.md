git clone https://github.com/CrunchyData/postgres-operator-examples.git

helm install $NAME -n $NAMESPACE helm/install

helm upgrade --install crunchy-postgres postgres-operator-examples/helm/install --namespace postgres --create-namespace


helm upgrade --install crunchy-postgres postgres-operator-examples/helm/install --namespace postgres --create-namespace

helm install hippo postgres-operator-examples/helm/postgres --namespace postgres
