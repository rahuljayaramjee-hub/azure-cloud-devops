# azure-linux-nginx-server
## project: deploy linux vm and host a website using azure
- create resourse group
- create ubuntu virtual machine
- connect using ssh
- install nginx
- open port 80 in nsg
- access the website using PUBLIC IP

### commnad i run 
- ssh azureuser@PUBLIC_IP
- sudo apt update
- sudo apt install nginx -y
- sudo systemctl status nginx
- curl localhost

## Screenshots

### Azure Virtual Machine Overview
![VM Overview](azure-virtual-machine-overview.png)

### Network Security Rule (Port 80)
![NSG Rule](nginx port 80.png)
