#!/bin/bash

# Wait for PostgreSQL to start
until pg_isready -p 5432 -q; do
  echo "Waiting for PostgreSQL to start..."
  sleep 2
done

# Create user_management_db database and user
psql -U root -c "CREATE DATABASE user_management_db;"
# psql -h db -U root -d user_management_db -c "CREATE USER user_management_user WITH PASSWORD 'user_management_password';"
psql -U root -d user_management_db -c "GRANT ALL PRIVILEGES ON DATABASE user_management_db TO root;"

# Create note_service_db database and user
psql -U root -c "CREATE DATABASE note_service_db;"
# psql -h db -U root -d note_service_db -c "CREATE USER note_service_user WITH PASSWORD 'note_service_password';"
psql -U root -d note_service_db -c "GRANT ALL PRIVILEGES ON DATABASE note_service_db TO root;"
