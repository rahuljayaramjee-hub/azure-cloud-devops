# Helm Charts

## What is Helm?
Package manager for Kubernetes - like apt-get but for entire apps!
One command installs/deletes everything!( just like sudo apt install docker is intall the docker
in one cammand line

## Without Helm vs With Helm
Without helm chart we have to create pods,deployed it and expose to port 
with the helm chart we can install whole app with single line command 

## Helm Chart Structure
Chart.yaml = ID card of app (name, version)
values.yaml = settings file (like ConfigMap)
templates/ = all kubernetes yaml files

## Commands
```
helm create rahul-app (create chart template)
helm install rahul-release rahul-app (install)
helm list (see all installations)
helm uninstall rahul-release (delete everything)
```
!
