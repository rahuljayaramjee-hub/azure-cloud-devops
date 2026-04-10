# Kubernetes Learning Notes

## What is Kubernetes?
Manages hundreds of containers automatically
Docker runs one container, Kubernetes manages thousands

## Real World Use
- Netflix, Swiggy, Airbnb all use Kubernetes
- Auto restarts crashed containers
- Auto scales when traffic increases
- Never lets your app go down!

## Tools Installed
- Minikube - mini Kubernetes cluster on laptop for learning
- kubectl - remote control to talk to Kubernetes

## Commands Learned

### Cluster
- `minikube start` - start kubernetes cluster
- `kubectl get nodes` - see all machines in cluster

### Pods
- `kubectl run avengers-pod --image=nginx` - create a pod
- `kubectl get pods` - see all pods
- `kubectl get pods -o wide` - see pods with IP and node
- `kubectl describe pod avengers-pod` - full details of pod
- `kubectl logs avengers-pod` - see pod logs
- `kubectl delete pod avengers-pod` - delete a pod

### Deployments
- `kubectl create deployment avengers --image=nginx` - create deployment
- `kubectl get deployments` - see all deployments
- `kubectl scale deployment avengers --replicas=3` - scale to 3 pods
- `kubectl delete pod <name>` - kubernetes auto replaces it!

### Services
- `kubectl expose deployment avengers --port=80 --type=NodePort` - expose to outside
- `kubectl get services` - see all services
- `minikube service avengers --url` - get URL to access in browser

## Key Concepts

### Pod vs Deployment
- Pod alone = if it crashes its gone forever
- Deployment = kubernetes automatically replaces crashed pods!

### Replicas
- replicas=1 = 1 pod, short gap when it crashes
- replicas=3 = 3 pods, app never goes down!

### Service Types
- ClusterIP = only inside cluster
- NodePort = accessible from outside
- LoadBalancer = used in cloud (AWS, Azure)

## Architecture in layman terms
- Pod = one worker
- Deployment = hiring agency managing workers
- Service = reception desk routing visitors to workers
- Minikube = practice airport on your laptop
- kubectl = remote control for kubernetes

## stsrted practising today for perfection 

# Kubernetes Real Practice - NGINX App
kubectl create deployment nginx-app --image=nginx

Verify:

kubectl get deployments
kubectl get pods

## Step 1: Start Cluster
```
minikube start
kubectl get nodes
```

## scaling the application with replicas 
```
kubectl scale deployment nginx-app --replicas=3
```




