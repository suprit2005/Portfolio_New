#!/usr/bin/env bash
set -o errexit

pip install -r portfolio_site/requirements.txt
cd portfolio_site

python manage.py collectstatic --no-input
python manage.py migrate