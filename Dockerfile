<<<<<<< HEAD
#FROM node:carbon
=======

FROM centos:centos7.5.1804
#
WORKDIR /opt/cobol
COPY . .

RUN yum -y install libgmp3-dev libtool libdb-dev ncurses-dev libncurses-dev
RUN yum -y install gmp gmp-devel libtool ncurses ncurses-devel ncurses-libs make
RUN yum -y install libdbi libdbi-devel libtool-ltdl libtool-ltdl-devel db4 db4-devel
<<<<<<< HEAD
RUN yum -y install wget 
=======
RUN yum -y install wget
>>>>>>> 848aba8f31a977e50835e0bf9d9cad6da37f1ff2
RUN cd gnucobol-3.0-rc1 && ./configure --without-db && make && make check && make install
#RUN gnucobol-3.0-rc1/configure --without-db
#RUN gnucobol-3.0-rc1/make
#RUN gnucobol-3.0-rc1/check
#RUN gnucobol-3.0-rc1/make install
RUN ldconfig
RUN cobc -V
RUN export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
RUN sh 'sudo chmod +x comp.sh'
RUN sh'./comp.sh build --no-daemon'

EXPOSE 8080
CMD tail -f /dev/null
