### Kuberenetes controllers:
![preview](./Images/k8scontrollers.png)
### creating pod with
1. nginx
2. nginx & alpine with sleep 1d
3. nginx & alpine with sleep 1d & alpine with sleep 10 sec
4. nginx & httpd with 80 port exposed
![preview](./Images/k8s13.png)
![preview](./Images/k8s14.png)
![preview](./Images/k8s15.png)
![preview](./Images/k8s16.png)
![preview](./Images/k8s17.png)
### replication controller:
* A ReplicationController is responsible for managing the pod lifecycle and ensuring that the specified number of pods required are running at any given time. 
* If there are too many pods, the ReplicationController terminates the extra pods. If there are too few, the ReplicationController starts more pods. Unlike manually created pods, the pods maintained by a ReplicationController are automatically replaced if they fail, are deleted, or are terminated.
* replicaset nginx pod without selectors:
```
---
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: rsnginx
spec:
  minReadySeconds: 1
  replicas: 3
  template:
    metadata:
      name: rspod
    spec:  
      containers:
        - name: nginx
          image: nginx:1.25
          ports:
            - containerPort: 80
```            
![preview](./Images/k8s18.png)
* replicaset nginx pod with selectors:
```
---
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: rsnginx
  labels:
    app: nginx
spec:
  minReadySeconds: 1
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      name: rspod
      labels:
        app: nginx
    spec:  
      containers:
        - name: nginx
          image: nginx:1.25
          ports:
            - containerPort: 80
```
![preview](./Images/k8s21.png)
To describe the replicaset
```
kubectl describe rs rsnginx
```
![preview](./Images/k8s22.png)
* Now delete all the three pods and then check number of pods
![preview](./Images/k8s23.png)
* We can see three new pods created as number of replicasets are 3.
* we can scale the number of pods using the command
```
kubectl scale --replicas=4 rs/rsnginx
```  
![preview](./Images/k8s24.png)


