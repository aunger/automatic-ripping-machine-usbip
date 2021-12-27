FROM rix1337/docker-ripper:latest
# rix1337/docker-ripper:manual-latest

RUN apt-get install linux-tools-generic
RUN modprobe vhci-hcd
RUN /usr/lib/linux-tools/$(uname -r)/usbip list -r 192.168.1.243
