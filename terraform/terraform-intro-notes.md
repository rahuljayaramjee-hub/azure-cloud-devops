# Terraform Learning Notes

## What is Terraform?
Infrastructure as Code - create servers, networks with just code!
Instead of clicking in Azure/AWS console manually,
you write code and Terraform creates everything automatically!

## Why Terraform?
- Manual way = clicking in console every time (slow, error prone)
- Terraform way = write once, create anywhere, reuse forever!
- Works with Azure, AWS, GCP all!

## Terraform vs Others
- Terraform = creates infrastructure (servers, networks, databases)
- Docker = runs apps in containers
- Kubernetes = manages containers
- CI/CD = automates code deployment

## HCL Language
Terraform uses HCL (HashiCorp Configuration Language)
Very simple - easier than Python!

Example:
resource "azurerm_resource_group" "rahul-rg" {
  name     = "rahul-devops-rg"
  location = "East US"
}

## Learning Roadmap
1. Terraform basics (local practice)
2. Terraform with Azure
3. Python basics
4. AWS with Python
5. AZ-104 certification

# Terraform Basics 

## What I practiced
- Installed Terraform
- Ran basic commands
