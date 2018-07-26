FROM ubuntu

#RUN useradd -ms /bin/bash  user

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y tftpd-hpa xinetd \
    net-tools nfs-kernel-server &&\
    mkdir -p /srv/tftp && \
    mkdir -p /srv/nfs/busybox 


RUN echo "TFTP_USERNAME=\"tftp\" \n\
TFTP_DIRECTORY=\"/srv/tftp\" \n\
TFTP_ADDRESS=\"0.0.0.0:69\" \n\
TFTP_OPTIONS=\"--secure\"\n" > /etc/default/tftpd-hpa

RUN echo "service tftp \n\
{ \n\
	protocol       = udp \n\
	port           = 69  \n\
	socket_type    = dgram \n\
	wait           = yes \n\
	user           = root \n\
	server         = /usr/sbin/in.tftpd \n\
	server_args    = --secure --user tftp /srv/tftp \n\
	disable        = no \n\
}\n" > /etc/xinetd.d/tftp

RUN echo "/srv/nfs/busybox 192.168.0.100/24(rw,sync,no_root_squash,no_subtree_check)" \
    >> /etc/exports 

EXPOSE 69

RUN chown -R tftp:tftp /srv/tftp &&\
    service tftpd-hpa stop && \
    service xinetd restart && \
    mkdir /run/sendsigs.omit.d/


#ENTRYPOINT ["service", "xinetd",  "start", "&&", "/bin/bash", "-c"]
ENTRYPOINT service xinetd start && \
           service rpcbind restart && \
           service nfs-kernel-server start && \
           /bin/bash 
