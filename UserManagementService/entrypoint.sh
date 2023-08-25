#!/bin/bash

echo yes | python manage.py collectstatic

# Apply database migrations
python manage.py makemigrations
python manage.py migrate

# Create a superuser if it doesn't exist
echo "from django.contrib.auth.models import User; User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'admin')" | python manage.py shell

# Start the application
# python manage.py runserver 0.0.0.0:8000
gunicorn -w 4 --timeout 30 UserManagementService.wsgi:application --bind 0.0.0.0:8000