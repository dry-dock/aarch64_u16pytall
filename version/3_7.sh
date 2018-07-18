#!/bin/bash -e

echo "================= Installing Python 3.7.0 ==================="

sudo apt-get install -y \
  python3.7=3.7* \
  python3.7-dev=3.7*

# Install virtualenv
virtualenv -p python3.7 $HOME/venv/3.7

# Install pip packages
. $HOME/venv/3.7/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python 3.7.0 ==================="
