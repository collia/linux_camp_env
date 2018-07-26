FROM ubuntu

RUN useradd -ms /bin/bash  user

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ccache libncurses5-dev \
      libssl-dev bc bison flex util-linux dosfstools e2fsprogs \
      android-tools-fsutils dfu-util fastboot u-boot-tools tftpd-hpa xinetd tree \
      wget make &&\
    mkdir /home/user/linux_camp


RUN wget https://releases.linaro.org/components/toolchain/binaries/7.2-2017.11/arm-linux-gnueabihf/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabihf.tar.xz &&\
    tar xJvf gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabihf.tar.xz -C /opt


USER user

WORKDIR /home/user/linux_camp

ENV PATH=/opt/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabihf/bin:$PATH
ENV CROSS_COMPILE='arm-linux-gnueabihf-'
ENV ARCH=arm



ENTRYPOINT ["/bin/bash", "-c"]
