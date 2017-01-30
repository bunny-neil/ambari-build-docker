#!/usr/bin/bash 

sudo docker run \
     --name ambari-build \
     --rm -i -t \
     -v /home/neil/ambari:/ambari \
     simumind/ambari-build:1.0.0 \
     /bin/bash
