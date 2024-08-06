#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT nicks_2nd_cool_app_48969.wsgi:application
