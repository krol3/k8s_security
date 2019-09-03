# DIY Pen-Testing for Your Kubernetes Cluster - Liz Rice, Aqua Security

### penetration testing

- nmap
  metasploit
  nessus

## Open ports / API requests

http
https: certificate ?
https with client authentication
https with client authentication and authorization

## Motivation

- Tesla clous resources are hacked to run cryptocurrency-mining malware
  \*\*\* Dashboard public internet, cluster admin privileges
  API open ?

## Misconfigurations Tools

- kube-hunter

MASTER_IP=192.168.205.10

`sudo lsof -i -P -n | grep LISTEN`
sudo lsof -n | grep LISTEN

curl -k http://$MASTER_IP
curl -k http://$MASTER_IP:8080
curl -k https://$MASTER_IP
curl -k https://$MASTER_IP:6443

curl -k https://$MASTER_IP:6443/api/v1/namespaces/default

- insecure port : http 8080
- secure port : https 6443

https://api.k8s.hacluster.gupy.io/api/v1/nodes
https://api.k8s.hacluster.gupy.io/api/v1/namespaces/default/pods

curl -k https://api.k8s.hacluster.gupy.io/healthz

Each Pods have access to a serviceaccount token

curl -k https://kubernetes

## Secrets RBAC permissions

## etcd

curl -k https://my_api:2379
curl -k https://my_api:2379/version

## Kubelete API

curl -k https://my_api:10250
curl -k https://my_api:10250/metrics

## resources

https://www.youtube.com/watch?v=fVqCAUJiIn0

## Kubeadm vagrant

https://github.com/coolsvap/kubeadm-vagrant
