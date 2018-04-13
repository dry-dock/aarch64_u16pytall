#!/bin/bash -e

echo "================= Installing Python 3.5 ==================="

sudo apt-get install -y \
  python3.5=3.5.2-2ubuntu0~16.04* \
  python3.5-dev=3.5.2-2ubuntu0~16.04*

# Install virtualenv
virtualenv -p python3.5 $HOME/venv/3.5

# Install pip packages
. $HOME/venv/3.5/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python 3.5 ==================="
