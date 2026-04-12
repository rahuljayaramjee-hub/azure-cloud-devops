# YAML Learning Notes

## What is YAML?
A way to write structured data that machines can read
Like filling a form - just key: value pairs!

## 3 Basic Rules
1. Key Value: name: Rahul
2. Lists (use -):
   skills:
     - Docker
     - Kubernetes
3. Nested (use spaces, NEVER tabs!):
   address:
     city: Hyderabad
     country: India

## Other YAML concepts
Booleans: is_employed: false
Numbers: age: 22
Comments: # this is a comment
Multi-line text:
  about: |
    I am Rahul
    Learning DevOps

## YAML + Kubernetes connection
i write yaml format ( i'm the deveoper)
kubectl apply (kubectl its like waiter takes the codes to gives to kubernetes and without kubectl kubernets wont work )
Kubernetes creates pod (when kubectl give all the instructioin to kubernets then kubenetes excutes the order )

## Pod YAML structure
apiVersion: v1
kind: Pod
metadata:
  name: avengers-pod
  labels:
    app: avengers
spec:
  containers:
  - name: avengers-container
    image: nginx
    ports:
    - containerPort: 80

## Commands
kubectl apply -f avengers-pod.yaml (create from yaml)
kubectl get pods
kubectl delete -f avengers-pod.yaml (delete from yaml)
