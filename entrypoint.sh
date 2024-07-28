#!/bin/bash

# Perform database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Run Gunicorn server
gunicorn python_cicd.wsgi --bind 0.0.0.0:80 --workers 3 --threads 3

# Additional scripts or commands can be added here