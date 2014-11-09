FROM ubuntu:14.04

RUN apt-get update && apt-get -y install curl

RUN cd /opt &&  curl -L 'http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz' -H 'Cookie: oraclelicense=accept-securebackup-cookie; gpw_e24=Dockerfile' | tar -xz

ENV JAVA_HOME /opt/jdk1.8.0_25

ENV PATH $JAVA_HOME/bin:$PATH