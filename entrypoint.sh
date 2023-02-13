#!/usr/bin/env bash

python manage.py migrate
python manage.py createsuperuser --noinput --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL
gunicorn app.wsgi:application --bind 0.0.0.0:8000
