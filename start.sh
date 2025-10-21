#!/bin/bash

# Navigate to backend
cd backend

# Upgrade pip and install dependencies
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Set Flask environment
export FLASK_ENV=production
export FLASK_APP=application.py

# Run Flask on Railway port
python -m flask run --host=0.0.0.0 --port=${PORT:-8080}
