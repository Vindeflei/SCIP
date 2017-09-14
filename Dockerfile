FROM kdelfour/cloud9-docker

RUN apt-get update && apt-get install -y wget build-essential m4

RUN cd /tmp && \
    wget http://ftp.gnu.org/gnu/mit-scheme/stable.pkg/9.2/mit-scheme-9.2-x86-64.tar.gz && \
    tar xvf mit-scheme-9.2-x86-64.tar.gz && \
    cd mit-scheme-9.2/src && \
    ./configure && \
    make compile-microcode && \
    make install
