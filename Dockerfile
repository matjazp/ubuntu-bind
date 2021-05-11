FROM internetsystemsconsortium/bind9:9.16
LABEL org.opencontainers.image.source="https://github.com/matjazp/ubuntu-bind"
RUN apt-get -qqqy update && apt-get -qqqy install nano dnsutils iputils-ping ifupdown
RUN echo include "/etc/bind/named.conf.log"; >> /etc/bind/named.conf
RUN mkdir -p /var/log/bind
RUN chown bind:bind /var/log/bind
COPY --chown=root:bind named.conf.log /etc/bind/named.conf.log
CMD [ "bash" ]
