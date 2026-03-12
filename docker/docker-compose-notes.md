# Docker Compose Notes

## What is Docker Compose?
Instead of running multiple docker commands separately,
Docker Compose runs all containers with ONE command using a single yml file.

## Why Docker Compose?
Before: 5 separate commands to start containers manually
After: just `docker compose up` - thats it!

## Commands Learned
- `docker compose up` - start all containers
- `docker compose up -d` - start in background
- `docker compose ps` - see all running containers
- `docker compose down` - stop and remove everything

## What we built
- Flask app (web container) - counts page visits
- Redis database (redis container) - stores the count
- Both containers talk to each other automatically
- No need to create network manually - compose does it!

## docker-compose.yml structure
services:
  web:
    build: .
    ports:
      - "5000:5000"
  redis:
    image: redis

## Real world use
- web app + database running together
- No manual network creation needed
- One command starts everything
- One command stops everything
