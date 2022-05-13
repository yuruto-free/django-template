"""
WSGI config for config project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.0/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

app_env = os.getenv('DJANGO_APP_ENV', 'development')

if app_env == 'production':
    setting_filename = 'production'
elif app_env == 'staging':
    setting_filename = 'staging'
else:
    setting_filename = 'development'
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings.{}'.format(setting_filename))

application = get_wsgi_application()
