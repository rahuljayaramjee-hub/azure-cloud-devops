# Kubernetes Services

## What is a Service?
A Service is the front door to your Pods.
Pods are running but nobody can access them without a Service.

## 3 Types of Services

| Type | Use Case |
|---|---|
| ClusterIP | Internal pod-to-pod only |
| NodePort | External access via port number |
| LoadBalancer | Production on Azure/AWS |

## Commands

### Expose a deployment as a Service
```bash
kubectl expose deployment myapp --type=NodePort --port=80
```

### Check services
```bash
kubectl get services
```

### Get service URL
```bash
minikube service myapp --url
```

### Port forward (best for local testing)
```bash
kubectl port-forward service/myapp 8080:80
# Then access: curl http://localhost:8080
```

### Delete a service
```bash
kubectl delete service myapp
```

## Real Output from Practice
- Exposed myapp deployment as NodePort
- Used port-forward to access nginx
- Got HTML response from nginx = app is live ✅
