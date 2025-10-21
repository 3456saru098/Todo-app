#!/bin/bash

# Step 1: Build the React frontend
echo "Building frontend..."
cd frontend
npm install
npm run build

# Step 2: Start the Flask backend
echo "Starting backend..."
cd ../backend
pip install -r requirements.txt

# Set Flask environment
export FLASK_ENV=production
export FLASK_APP=app.py  # change if your main file is different

# Run Flask on port 8080
python app.py
