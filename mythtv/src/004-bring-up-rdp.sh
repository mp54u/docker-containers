#!/bin/bash
export XKB_DEFAULT_RULES=evdev
export XKB_DEFAULT_MODEL=pc105
export XKB_DEFAULT_LAYOUT=us
#export XKB_DEFAULT_VARIANT=
#export XKB_DEFAULT_OPTIONS=
mkdir -p /home/mythtv/
mkdir -p  /var/run/sshd
mkdir  -p /root/.vnc
chown -R mythtv:users /home/mythtv/ /var/log/mythtv
/usr/bin/supervisord -c /root/supervisor-files/rdp-supervisord.conf & >/dev/null 2>&1
