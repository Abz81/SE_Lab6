#!/bin/bash

# Build images
echo "Building UserManagementService image..."
docker build -t user-management-service ./UserManagementService

echo "Building NoteService image..."
docker build -t note-service ./NoteService

echo "Building db image..."
docker build -t note-db ./db

# Deploy Docker Swarm stack
STACK_NAME="my-stack"
COMPOSE_FILE="docker-compose.swarm.yml"

# Check if the stack exists and deploy/update accordingly
if docker stack ls | grep -q "$STACK_NAME"; then
  echo "Updating existing stack: $STACK_NAME"
  docker stack deploy -c $COMPOSE_FILE $STACK_NAME
else
  echo "Creating new stack: $STACK_NAME"
  docker stack deploy -c $COMPOSE_FILE $STACK_NAME
fi