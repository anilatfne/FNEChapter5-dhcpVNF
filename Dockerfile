FROM ubuntu
RUN apt-get update  \
    && apt-get -y install  \
          isc-dhcp-server

COPY isc-dhcp-server /etc/default/isc-dhcp-server
COPY dhcpd.conf /etc/dhcp/dhcpd.conf
CMD service isc-dhcp-server start && tail -f /dev/null


