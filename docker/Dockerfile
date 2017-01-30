FROM centos:6.8
RUN yum groupinstall -y "Development tools"
RUN yum install -y \
        wget \
        python-devel.x86_64 \
        java-1.7.0-openjdk-devel.x86_64 

RUN exec bash -c "wget https://archive.apache.org/dist/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz"
RUN exec bash -c "tar zxvf apache-maven-3.0.5-bin.tar.gz"
RUN exec bash -c "rm -f apache-maven-3.0.5-bin.tar.gz && mv apache-maven-3.0.5 /opt"

RUN exec bash -c "wget http://pypi.python.org/packages/2.6/s/setuptools/setuptools-0.6c11-py2.6.egg#md5=bfa92100bd772d5a213eedd356d64086" 
RUN exec bash -c "sh setuptools-0.6c11-py2.6.egg" 
RUN exec bash -c "rm -f setuptools-0.6c11-py2.6.egg" 

RUN exec bash -c "wget https://nodejs.org/download/release/v0.10.44/node-v0.10.44-linux-x64.tar.gz"
RUN exec bash -c "tar zxvf node-v0.10.44-linux-x64.tar.gz"
RUN exec bash -c "rm -f node-v0.10.44-linux-x64.tar.gz"
RUN exec bash -c "mv node-v0.10.44-linux-x64 /opt"

RUN exec bash -c "/opt/node-v0.10.44-linux-x64/bin/npm install -g brunch@1.7.20"

COPY ambari-build-env.sh /etc/profile.d

WORKDIR /ambari
VOLUME /home/neil/ambari/ambari:/ambari
