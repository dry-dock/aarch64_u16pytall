#!/bin/bash -e

echo "================= Installing PYPY2 ==================="

PYPY2_VERSION=v5.10.0
#install Pypy
wget -nv https://bitbucket.org/pypy/pypy/downloads/pypy2-v5.10.0-linux64.tar.bz2
tar -xvf pypy2-"$PYPY2_VERSION"-linux64.tar.bz2 -C /opt/
cp -s /opt/pypy2-"$PYPY2_VERSION"-linux64/bin/pypy2 /usr/bin/pypy2
mkdir /opt/pypy2
mkdir /opt/pypy2/site-packages/
cd /opt/pypy2

#Install virtualenv
virtualenv -p pypy2 $HOME/venv/pypy2

# Install pip packages
. $HOME/venv/pypy2/bin/activate
pip install cryptography==1.8.2 pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage

# optional lxml package as lxml is not compatible with pypy2
#pip install -e git+git://github.com/aglyzov/lxml.git@cffi#egg=lxml-cffi

#Default lxml throws error
#CFLAGS="-O0" #STATIC_DEPS=true pip install lxml #throws error :disappointed:
deactivate
echo "================= Successfully Installed PYPY2 ==================="
