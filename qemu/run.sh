#! /bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

echo loca dir $SCRIPTPATH
docker run -ti --privileged -v  $(dirname $(readlink -f $0))/build:/home/user/linux_camp qemo-x86  
