#!/bin/bash
export MSYS_NO_PATHCONV=1
docker volume create rikkei-pg-data
docker run -d --name rikkei-db -e POSTGRES_PASSWORD=Rikkei@2026 -v rikkei-pg-data:/var/lib/postgresql/data postgres:13
docker rm -f rikkei-db
docker run -d --name rikkei-db -e POSTGRES_PASSWORD=Rikkei@2026 -v rikkei-pg-data:/var/lib/postgresql/data postgres:13
docker exec rikkei-db ls -l /var/lib/postgresql/data
