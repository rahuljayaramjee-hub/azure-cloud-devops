# CI/CD Pipeline with GitHub Actions

## What is CI/CD?
Automates build and push every time you push code to GitHub

## Pipeline Flow
git push → GitHub Actions → docker build → docker push to Docker Hub

## Secrets added
- DOCKER_USERNAME
- DOCKER_PASSWORD

## Result
Every git push automatically updates Docker Hub image!
