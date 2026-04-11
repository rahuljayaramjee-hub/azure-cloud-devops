# This is practsing of ingrees with my name ( using my company name as rahul-cloud and rahul software

## commnds i used 
## crete deployment
 
```
- kubectl create deployment rahul-cloud --image=nginx
- kubectl create deployment rahul-software --image=nginx

``` 
## now i have exposed thses two deployment to the post mapping of port 80
 
```
- kubectl expose deployment rahul-cloud --port=80
- kubectl expose deployment rahul-software --port=80

```

## Two check the services of kubectl deployment
 ```
- kubectl get services
```
## i have created the ingrees file 

```
nano rahul-ingress.yaml
```
## i have pasted the yaml codes according to the file and closed it 
 
```
kubectl apply -f rahul-ingress.yaml
kubectl get ingress 
echo "192.168.49.2 rahulcloud.local" | sudo tee -a /etc/hosts

```
 ## we have to check wheater its working or not 

```
curl http://rahulcloud.local/cloud
curl http://rahulcloud.local/software
```
 ## The output will shows as 404 not found becasue its empty 
  ```
192.168.49.2 rahulcloud.local rahul@JAYARAMJEE:~/azure-cloud-devops/kubernetes$ curl http://rahulcloud.local/cloud <html> <head><title>404 Not Found</title></head> <body> <center><h1>404 Not Found</h1></center> <hr><center>nginx/1.29.8</center> </body> </html> rahul@JAYARAMJEE:~/azure-cloud-devops/kubernetes$ curl http://rahulcloud.local/software <html> <head><title>404 Not Found</title></head> <body> <center><h1>404 Not Found</h1></center> <hr><center>nginx/1.29.8</center> </body> </html>
```


### This is the output of the give lines and its shows that its working
