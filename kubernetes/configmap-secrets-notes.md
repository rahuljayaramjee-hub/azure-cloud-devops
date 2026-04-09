# 💻 Kubernetes and secrets

## ConfigMap
Store app settings outside code - change settings without rebuilding app!
Like a TV remote - change channels without buying new TV

### Commands
```
kubectl create configmap swiggy-config
--from-literal=CITY=Hyderabad
--from-literal=DB_URL=swiggy-database.com
kubectl get configmaps
kubectl describe configmap swiggy-config
kubectl get configmap swiggy-config -o yaml
```

---

## Secrets
Store sensitive data like passwords - encoded in base64 for safety!
Like a safe locker vs ConfigMap which is a whiteboard

### Commands
```
kubectl create secret generic swiggy-secret
--from-literal=DB_PASSWORD=swiggy123
kubectl get secrets
kubectl describe secret swiggy-secret
kubectl get secret swiggy-secret -o yaml
```

---


