# Kubernetes Ingress

## What is Ingress?
Main gate/receptionist - routes traffic to correct service based on URL
its like a securuty guard allows the request to the correct services 

## Without Ingress vs With Ingress
Without: http://192.168.49.2:32560 it's look good but the numericals thing look unprofessional 
With: zomato.local/food, zomato.local/payment ( with this line it looks so good and we can identiy the services of his line like yeah its zomato 

## Commands
minikube addons enable ingress
kubectl apply -f ingress.yaml( it will enabls the ingress addons and it will take some time 
kubectl get ingress ( it will show the ingress created or not )
echo "192.168.49.2 zomato.local" | sudo tee -a /etc/hosts ( we added the host file to the with sudo )
curl http://zomato.local/food

## Real world use
zomato.com/food → food service → food pods
zomato.com/payment → payment service → payment pods
One domain, multiple services
