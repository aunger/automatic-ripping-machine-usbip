FROM rix1337/docker-ripper:latest
# rix1337/docker-ripper:manual-latest

RUN apt-get update -y && apt-get install -y kmod linux-tools-generic
RUN modprobe vhci-hcd
# RUN modprobe usbip_client
RUN /usr/lib/linux-tools/*/usbip list -r 192.168.1.143 > usbip-list.log
