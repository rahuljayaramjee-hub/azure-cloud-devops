# :blue_book: azure cloud devops day 1
## project: deploy linux vm and host a website using azure
- create resourse group
- create ubuntu virtual machine
- connect using ssh
- install nginx
- open port 80 in nsg
- access the website using PUBLIC IP
---
### :computer: commnad i run 
- ssh azureuser@PUBLIC_IP
- sudo apt update
- sudo apt install nginx -y
- sudo systemctl status nginx
- curl localhost
  :check_mark:
## Screenshots
---
### Azure Virtual Machine Overview
![Azure VM](azure-virtual-machine-overview.png)

### Network Security Rule (Port 80)
![NSG Rule](nginx-port-80.png)

:check_mark:
---
# :blue_book: azure cloud devops day 2
-today i have praactised manging azure resources using cli instead of azure portal the goal was to understand to deploy
## :cloud: topics i have covered

- azure cli installation
- azure cli login
- creating resource groups
- connecting a virtual machine
- opening port 80 for web traffic
- installing nginx
- installing docker

  ### :computer: step 1 installing of azure cli

  #### i used command curl -sL https://aka.ms/InstallAzureCLIeb | sudo bash

  ![Azure CLI Install](installed-cli-for-command.png.png)

  #### login to azure cli as login --use-device-code

  ![Azure Login](comanding-cli-to-vm.png.png)

  #### created resource group az group create --name devops-rg --location centralindia

   ![Resource Group](deployed-all-vm-with-cli.png.png)

  az vm create \
--resource-group devops-rg \
--name devops-vm \
--image Ubuntu2204 \
--size Standard_B2as_v2 \
--admin-username azureuser \
--generate-ssh-keys \
--location centralindia

  ![VM Overview](azure-virtual-machine-overview.png)

   #### open port 80
  az vm open-port \
--resource-group devops-rg \
--name devops-vm \
--port 80

![Port 80](nginx-port-80.png)

#### install of nginx 
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx

![NGINX Running](checking-nginx.png.png)

 with the help of ip address we can browse and it willl show nginx is installed

:check_mark:

---
 # :blue_book: Day 3 docker basic level
 ---
## Docker Basics
---

### :computer: Commands learned:

- docker run -d -p 8000:80 nginx
- docker ps
- docker ps -a
- docker stop <container-id>
- docker start <container-id>
- docker rm <container-id>
- docker container prune
- learn docker volume and networking
---
### :cloud: Concept learned and did hands on practise :
- Docker container
- Port mapping
- Running Nginx in container

Example:

Host Port → Container Port

8000:80

Access in browser:

http://localhost:8000
### Docker Container Stop

![Docker Stop](docker-stop.png.png)

### Docker Volume Example

![Docker Volume](docker-volume.png.png) 

:check_mark:

---

# :blue_book: same day i learn git and github baics
---
## :computer: Commands learned:

git init
git status
git add
git commit
git log
git remote add origin
git branch -M main
git push

Concept learned:
- Local repository
- Remote repository
- Git commit history
- Uploading project to GitHub
### Git Push to GitHub

![Git Push](git-push.png.png)

### Git Repository Setup

![Git Repo](git-repo.png.png)
:check_mark:

---

# :blue_book: Day 4 – Dockerfile and Custom Image
---
## Objective

Learn how to build a custom Docker image using a Dockerfile and run a container.

---
## Steps Performed

1. Created a project directory
2. Added a simple HTML webpage
3. Wrote a Dockerfile using nginx base image
4. Built a Docker image
5. Ran a container using the image
6. Accessed the application through the browser
---
## :computer: Commands Used

docker build -t rahul-nginx .
docker run -d -p 8080:80 rahul-nginx
docker ps
curl localhost:8080
:check_mark:

---

![Curl Localhost Test](curl-localhost.png.png)

## Result

Successfully created a custom nginx container serving a personal HTML page.

