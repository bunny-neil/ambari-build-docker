# ambari-build-docker
* install docker 1.13.0
* docker pull centos:6.8
* git clone https://git-wip-us.apache.org/repos/asf/ambari.git
* change ambari build version from build-ambari.sh
* cd ./docker
* ./build.sh
* ./run.sh
* cd ambari
* ../build-ambari.sh (took 53min to build on my pc, so slow...)
