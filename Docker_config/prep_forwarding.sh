#!/bin/sh

cat > /etc/systemd/network/ipforward.network <<EOF
[Network]
IPForward=ipv4
EOF

cat > /etc/systemd/network/99-docker.conf <<EOF
net.ipv4.ip_forward = 1
EOF

sysctl -w net.ipv4.ip_forward=1
