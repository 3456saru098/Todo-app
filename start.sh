#!/bin/bash

cd backend

python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

export FLASK_ENV=production
export FLASK_APP=application.py

python3 -m flask run --host=0.0.0.0 --port=${PORT:-8080}
