FROM internetsystemsconsortium/bind9:9.16
LABEL org.opencontainers.image.source="https://github.com/matjazp/ubuntu-bind"
RUN apt-get -qqqy update && apt-get -qqqy install nano dnsutils iputils-ping ifupdown
CMD [ "bash" ]
