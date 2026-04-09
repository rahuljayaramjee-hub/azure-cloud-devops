## Namespaces
Separate environments in same cluster - like different floors in a building
dev floor = developers testing
staging floor = final testing
prod floor = real users

### Commands
kubectl get namespaces
kubectl create namespace dev
kubectl create namespace prod
kubectl run swiggy-dev --image=nginx -n dev
kubectl get pods -n dev
kubectl get pods --all-namespaces
