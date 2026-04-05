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
# CI/CD Pipeline with GitHub Actions

## Steps to create from scratch
1. mkdir -p .github/workflows
2. Create yml file inside workflows folder
3. Add DOCKER_USERNAME and DOCKER_PASSWORD secrets on GitHub
4. git push → pipeline runs automatically!

## Pipeline Flow
git push → GitHub Actions → docker build → docker push to Docker Hub

## Important
- .github/workflows is a special folder GitHub looks for
- Secrets keep your password safe
- Every git push triggers the pipeline automatically
