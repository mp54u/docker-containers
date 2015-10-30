FROM phusion/baseimage:0.9.17 
MAINTAINER gfhmp54u <gfhmp54u@gmail.com>
#Based on the work of gfjardim <gfjardim@gmail.com> 

#########################################
##        ENVIRONMENTAL CONFIG         ##
######################################### 
ENV DEBIAN_FRONTEND=noninteractive HOME="/root" TERM=xterm LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8 

# Use baseimage-docker's init system 
CMD ["/sbin/my_init"]


#########################################
##          GUI APP INSTALL            ##
######################################### 
# install mate and dependencies 
apt-get update -qq && \ 
apt-get install -qy --force-yes --no-install-recommends \ 
wget \ 
openjdk-7-jre \ 
sudo \ 
mate-desktop-environment-core \ 
x11vnc \ 
xvfb \ 
gtk2-engines-murrine \ 
ttf-ubuntu-font-family \ 
supervisor && \ 

# install xrdp 
apt-get install \ 
xrdp -y && \ 
mv /root/xrdp.ini /etc/xrdp/xrdp.ini && \ 

#########################################
##         EXPORTS AND VOLUMES         ##
######################################### 
# Expose ports 
EXPOSE 3389 4243 4242

# set volumes /data = /mnt/user for backing up unraid shares /config = where config files are stored for crashplan.
VOLUME /data /config

