# Kubernetes Deployments

## What is a Deployment?
A Deployment is a supervisor that keeps your Pods always running.
If a Pod crashes, the Deployment automatically creates a new one (self-healing).

## Deployment vs Raw Pod
| Raw Pod | Deployment |
|---|---|
| Dies = gone forever | Dies = auto restarted |
| Manual management | Automatic management |
| Not used in production | Used in ALL real projects |

## Commands

### Create a Deployment
```bash
kubectl create deployment myapp --image=nginx --replicas=3
```

### Check Deployments
```bash
kubectl get deployments
```

### Check Pods created by Deployment
```bash
kubectl get pods
```

### Delete a Pod (self-healing test)
```bash
kubectl delete pod <pod-name>
# New pod auto-creates within seconds!
```

### Delete a Deployment
```bash
kubectl delete deployment myapp
```

## Real Output from Practice
- Created deployment with 3 replicas
- Deleted one pod manually
- Kubernetes auto-created replacement pod in 13 seconds ✅
