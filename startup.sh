#!/bin/bash
echo "This is ansible controller contaiiner OwO!!" >>/etc/motd

nohup jupyter lab --ip=0.0.0.0 --port 9527 --allow-root >>/var/log/jupyter_lab.log &

/usr/sbin/sshd -Dp 22
