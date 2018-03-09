FROM drydock/aarch64_u16all:master

ADD . /u16pytall

RUN /u16pytall/install.sh
