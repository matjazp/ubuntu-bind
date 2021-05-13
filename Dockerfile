FROM internetsystemsconsortium/bind9:9.16
LABEL org.opencontainers.image.source="https://github.com/matjazp/ubuntu-bind"
RUN apt-get -qqy update && apt-get -qqy install dnsutils iputils-ping ifupdown  less nano
COPY startup.sh  /startup.sh
RUN chmod +x /startup.sh
COPY --chown=root:bind named.conf.log /etc/named.conf.log
ENTRYPOINT [ "./startup.sh"]
CMD [ "/usr/bin/bash" ]
