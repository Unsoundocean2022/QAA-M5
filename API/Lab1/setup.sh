#!/usr/bin/env bash

# Setup python Virtual Environment

# If there is a venv folder already, delete it
if [ -d "venv" ]; then
    rm -rf venv
fi

# Create virtual environment
python3 -m venv venv

# Activate virtual environment

source venv/bin/activate

# # Install requirements
pip3 install --upgrade pip

pip3 install -r requirements.txt

python3 main.py