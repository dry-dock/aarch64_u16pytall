#!/bin/bash -e

# install python prereqs
add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev libpq-dev libmysqlclient-dev

wget -nv https://bootstrap.pypa.io/3.2/get-pip.py
python get-pip.py
python -m pip install pip==8.1.2

pip install setuptools

# Installing virtualenv-15.2.0
wget -nv https://pypi.python.org/packages/b1/72/2d70c5a1de409ceb3a27ff2ec007ecdd5cc52239e7c74990e32af57affe9/virtualenv-15.2.0.tar.gz#md5=b5f6b473140cc627d19d0d203f3b63cc
tar xvfz virtualenv-15.2.0.tar.gz
cd virtualenv-15.2.0
python setup.py install
cd /
#!/bin/bash
for file in /u16pytall/version/*;
do
  $file
done
