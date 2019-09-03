## Authentication

- A user is associated with a key and certificate to authenticate API requests.

While X.509 certificates are used for authenticating external requests, service accounts are meant to authenticate processes running within the cluster.

Service accounts are associated with pods that make internal calls to the API server.

Kubernetes can delegate authentication to a 3rd party like OpenID or Active Directory.

CA_CERT=/var/run/secrets/kubernetes.io/serviceaccount/ca.crt
TOKEN=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
NAMESPACE=$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)

curl --cacert $CA_CERT -H "Authorization: Bearer $TOKEN" "https://kubernetes/api/v1/namespaces/$NAMESPACE/services/"

kubectl create rolebinding default-view \
 --clusterrole=view \
 --serviceaccount=default:default \
 --namespace=default

## Authorization

Role Based Access Control (RBAC)
to perform specific actions against certain Kubernetes resources

best practices Role

- Roles and role bindings in Kubernetes can be applied either at the namespace level or at the cluster level.

## Resources

https://thenewstack.io/kubernetes-access-control-exploring-service-accounts/
https://thenewstack.io/a-practical-approach-to-understanding-kubernetes-authorization/
https://thenewstack.io/a-practical-approach-to-understanding-kubernetes-authentication/
