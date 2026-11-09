#!/bin/bash
export MSYS_NO_PATHCONV=1

# Cho phep ghi log vao thu muc hien tai hoac /opt/rikkei
LOG_FILE="deploy.log"

exec >> "$LOG_FILE" 2>&1

echo "=== Deploying Course Service at $(date) ==="

if docker ps -a --format '{{.Names}}' | grep -q '^rikkei-course-service$'; then
    echo "Stopping and removing existing rikkei-course-service container..."
    docker stop rikkei-course-service
    docker rm rikkei-course-service
fi

echo "Starting new rikkei-course-service container..."
docker run -d --name rikkei-course-service -p 8081:80 nginxdemos/hello
echo "Deployment completed successfully."