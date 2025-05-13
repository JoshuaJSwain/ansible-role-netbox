#!/bin/bash

# Remove existing virtual environment
sudo rm -rf /opt/netbox/venv

# Create a new virtual environment with Python 3.8
sudo /root/.pyenv/versions/3.8.20/bin/python3.8 -m venv /opt/netbox/venv

# Activate the virtual environment
source /opt/netbox/venv/bin/activate

# Upgrade pip and install required packages
pip install --upgrade pip
pip install -r /opt/netbox/requirements.txt

# Verify the Python version and installed packages
/opt/netbox/venv/bin/python --version
/opt/netbox/venv/bin/pip list 