# k8s_security

## Demo bad practices

`kubectl create clusterrolebinding demoX --clusterrole=admin --serviceaccount=default:default`

#### Secrets

`TOKEN=$(kubectl exec $POD -- cat /var/run/secrets/kubernetes.io/serviceaccount/token)`

telnet redis 6379

## The demo

- app with redis
- nginx to play
