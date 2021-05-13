#! /usr/bin/bash
# make sure log file is included only once
grep -Fxq 'include "/etc/named.conf.log";' /etc/bind/named.conf || echo 'include "/etc/named.conf.log";' >> /etc/bind/named.conf
# echo 'include "/etc/named.conf.log";' >> /etc/bind/named.conf
if [ ! -d "/var/log/bind" ]; then
    mkdir -p /var/log/bind
    chown bind:bind /var/log/bind
fi

exec "$@"
