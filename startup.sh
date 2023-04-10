#!/bin/bash
echo "This is ansible controller contaiiner OwO!!" >>/etc/motd

PASSWD_SHA=$(python3 -c "from notebook.auth import passwd; print(passwd('Admin12345'))")
jupyter notebook --generate-config
echo "c.NotebookApp.password='$PASSWD_SHA'" >>/root/.jupyter/jupyter_notebook_config.py

nohup jupyter lab --ip=0.0.0.0 --port 9527 --allow-root >>/var/log/jupyter_lab.log &

/usr/sbin/sshd -Dp 22
