#!/bin/bash

# Step 1: Navigate to backend
cd backend

# Step 2: Install Python dependencies
pip install -r requirements.txt

# Step 3: Set Flask environment
export FLASK_ENV=production
export FLASK_APP=application.py  # change if your main file is different

# Step 4: Run Flask
python -m flask run --host=0.0.0.0 --port=8080
