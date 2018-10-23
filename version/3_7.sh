#!/bin/bash -e

export PYTHONPKG=3.7*
export PYTHONDEVPKG=3.7*

echo "================= Installing Python "$PYTHON_VERSION" ==================="
sudo apt-get install -y \
python3.7="$PYTHONPKG" \
python3.7-dev="$PYTHONDEVPKG"

# Install virtualenv
virtualenv -p python3.7 $HOME/venv/3.7

# Install pip packages
. $HOME/venv/3.7/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python $PYTHON_VERSION  ==================="
