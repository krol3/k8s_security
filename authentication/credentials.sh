
# Certificates API

echo "Generate a private key"
openssl genrsa -out my_user.key 2048

echo "Certificate Signing Request"
openssl req -new -key my_user.key -out my_user.csr -subj "/CN=my_user/O=company"\n

echo "Encode Base64 and replace in the yml"
cat my_user.csr | base64 | tr -d '\n'

kubectl apply csr.yml

echo "Approve the certificate"
kubectl certificate approve my_user-csr

echo "get the signed certificate from the cluster"
kubectl get csr my_user-csr -o jsonpath='{.status.certificate}' | base64 --decode > my_user.crt

echo "Add the user to Kubernetes"
kubectl config set-credentials my_user --client-certificate=my_user.crt --client-key=my_user.key