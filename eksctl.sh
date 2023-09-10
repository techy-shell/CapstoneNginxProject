curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
mv /tmp/eksctl /usr/local/bin
eksctl version
eksctl get cluster --name=myCapstoneProject --region=us-east-1
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 182785921749.dkr.ecr.us-east-1.amazonaws.com
docker tag capstone:latest 182785921749.dkr.ecr.us-east-1.amazonaws.com/capstone
kubectl get nodes
kubectl create deploy capstone --image=techyshell/capstone:v1.0.0
kubectl get deploy,rs,svc,pods
kubectl port-forward pod/capstone-75ddcd84f7-mmmgz --address 0.0.0.0 5001:5001