FROM ubuntu

RUN useradd -ms /bin/bash  user

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y qemu && \
    mkdir /home/user/linux_camp
#ADD ../build /home/user/linux_camp

USER root

WORKDIR /home/user/linux_camp


#CMD mkdir arch/x86/boot/bzImage

#ENTRYPOINT ["/bin/bash"]
#CMD "ls linux_camp"
#CMD ["qemu-system-i386", "-nographic", "-serial", "mon:stdio", "-append", "'console=ttyS0'","-m", "128M", "-kernel", "linux-4.17.2/arch/x86/boot/bzImage", "-append", "'root=/dev/sda'", "-hda", "hdd.img"]
#ENTRYPOINT ["qemu-system-i386", "-curses", "-nographic", "-m", "128M", "-kernel", "linux-4.17.2/arch/x86/boot/bzImage", "-append", "root=/dev/sda rw rootfstype=ext3 console=ttyS0", "-hda", "hdd.img"]
#CMD ["qemu-system-i386 -curses -nographic -m 128M -kernel linux-4.17.2/arch/x86/boot/bzImage -append 'root=/dev/sda rw rootfstype=ext3 console=ttyS0' -hda hdd.img"]
#ENTRYPOINT "qemu-system-i386 -curses -nographic -m  128M -kernel linux-4.17.2/arch/x86/boot/bzImage -append 'root=/dev/sda rw rootfstype=ext3 console=ttyS0' -hda hdd.img"

#CMD ["./update_rootfs.sh", "qemu-system-i386", "-curses", "-nographic", "-m", "128M", "-kernel", "linux-4.17.2/arch/x86/boot/bzImage", "-append", "root=/dev/sda rw rootfstype=ext3 console=ttyS0", "-hda", "hdd.img"]
CMD ["./runqemu.sh"]


