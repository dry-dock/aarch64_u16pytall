#!/bin/bash -e

export PYTHONPKG=2.7.12*
export PYTHONDEVPKG=2.7.12*
export PYTHONPIPPKG=8.1.1*
export PYTHONVIRTUALENV=15.0.*
echo "================= Installing Python $PYTHON_VERSION  ==================="
sudo apt-get install -y \
  python2.7="$PYTHONPKG" \
  python-dev="$PYTHONDEVPKG" \
  python-pip="$PYTHONPIPPKG" \
  python-virtualenv="$PYTHONVIRTUALENV"

# Install virtualenv
virtualenv -p python $HOME/venv/2.7

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python $PYTHON_VERSION  ==================="
