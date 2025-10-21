#!/bin/bash

# Step 1: Navigate to backend
cd backend

# Step 2: Install Python dependencies
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Step 3: Set Flask environment
export FLASK_ENV=production
export FLASK_APP=application.py

# Step 4: Run Flask on Railway port
python -m flask run --host=0.0.0.0 --port=${PORT:-8080}
