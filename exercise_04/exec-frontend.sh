#!/bin/bash
docker run -d --name rikkei-frontend-qa -e API_ENDPOINT=https://qa-api.rikkei.edu.vn nginx
docker exec rikkei-frontend-qa sh -c "echo $API_ENDPOINT"
