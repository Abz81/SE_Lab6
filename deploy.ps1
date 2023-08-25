# Build images
Write-Host "Building UserManagementService image..."
docker build -t user-management-service:latest .\UserManagementService

Write-Host "Building NoteService image..."
docker build -t note-service:latest .\NoteService

Write-Host "Building db image..."
docker build -t note-db:latest .\db

# Deploy Docker Swarm stack
$STACK_NAME = "my-stack"
$COMPOSE_FILE = "docker-compose.swarm.yml"

# Check if the stack exists and deploy/update accordingly
if (docker stack ls | Select-String $STACK_NAME) {
  Write-Host "Removing existing services..."
  docker service rm ${STACK_NAME}_user-management-service
  docker service rm ${STACK_NAME}_note-service

  Write-Host "Updating existing stack: $STACK_NAME"
  docker stack deploy --resolve-image=always -c $COMPOSE_FILE $STACK_NAME
} else {
  Write-Host "Creating new stack: $STACK_NAME"
  docker stack deploy --resolve-image=always -c $COMPOSE_FILE $STACK_NAME
}
