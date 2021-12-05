# EKS persistency with EBS

## Story

You're working on your postgreSQL Pod, and when checking the data inside, something is missing. It's all of the data. It turns out that one of the teammates you're working with frequently tests Pod in the cluster, and accidentally managed to delete yours. This is when the idea comes to your head. You should make you Pod persistent so that you lose none of that precious data.

## What are you going to learn?

- How to use volumes to persist data in your cluster

## Tasks

1. Use your previously created EKS, create a 5 GB EBS storage, and an aws-ebs `StorageClass`.
    - Created EBS is in the same region as your cluster.
    - Created EBS is in the same availability zone as your cluster.
    - The size of the volume is 5 GB.

2. Create a `PersistentVolume` and a `PersistentVolumeClaim`, to attach it.
    - VolumeID in your `PersistentVolume` config is the same as your EBS volume id. 
    - Created EBS is in the same availability zone as your cluster.
    - The storage capacity is 5Gi

3. Add a postgreSQL `Deployment` to your cluster. Use the latest docker image.
    - Deployment is successfully installed.

4. Create a `Service`, and add a `NodePort` to the service, to reach the pod in the cluster. Create a table, and insert some dummy data to the table. Query the data.
    - You are able to query the created data from the database.

## General requirements

- Use yaml configuration files for k8s object creation.

## Hints

- You can create the resources defined in your yaml on your cluster by running ```kubectl apply -f <YAML FILE NAME>```

## Background materials

- <i class="far fa-book-open"></i> [k8s volumes](https://kubernetes.io/docs/concepts/storage/volumes/)
- <i class="far fa-book-open"></i> [k8s persistent volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)
- <i class="far fa-book-open"></i> [k8s storage classes](https://kubernetes.io/docs/concepts/storage/storage-classes/)
- <i class="far fa-book-open"></i> [k8s StatefulSets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/)
- <i class="far fa-video"></i> [k8s volumes explained](https://youtu.be/0swOh5C3OVM)
