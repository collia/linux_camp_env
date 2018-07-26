#! /bin/bash

#modprobe nfs
#modprobe nfsd

#docker network create -d macvlan --subnet=192.168.0.0/24 -o parent=enp0s20f0u3u4 beagnet
# if prev command fails run from root
# rm /var/lib/docker/network/files/local-kv.db
# systemctl restart docker 
# 


docker run --privileged -ti -v "$(pwd)/tftp/:/srv/tftp/" -v "$(pwd)/../bb_soft/build/busybox/_install:/srv/nfs/busybox/" -p 69:69 -p 111:111 -p 111:111/udp -p 2049:2049 -p 2049:2049/udp --net beagnet --ip 192.168.0.2 bbb-netboot-server bash

