## Debug cluster

kubectl cluster-info

sudo systemctl status kubelet
journalctl -xeu kubelet

# Drop routing table
iptables -F

operating kubernetes network - julia evans
github dennyzhang challenges kubernetes
github arush-sal cka practice environment

telnet 10.0.2.15 6443
telnet 192.168.205.10 6443