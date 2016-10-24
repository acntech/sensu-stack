#!/usr/bin/env bash

# Build local base image for sensu placed in ./sensu folder
docker build ./sensu --tag acntech/sensu

# Use Docker Compose to run docker services/containers
docker-compose up -d