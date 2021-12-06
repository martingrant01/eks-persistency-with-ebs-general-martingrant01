# Create cluster in Amazon EKS (this takes some time)
eksctl create cluster -f cluster.yaml
# Install postgres application on EBS cluster 
cd postgres
helm install -f values.yaml postgresapp .