#!/bin/bash

/sbin/iptables -t nat -D PREROUTING -p tcp -m tcp --dport 443 -j REDIRECT --to-ports 8743 &>/dev/null
/sbin/iptables -t nat -D PREROUTING -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 8080 &>/dev/null
