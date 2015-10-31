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
ADD * /tmp/
RUN chmod +x /tmp/install.sh && /tmp/install.sh && rm /tmp/install.sh

#########################################
##         EXPORTS AND VOLUMES         ##
######################################### 
# Expose ports 
EXPOSE 3389 4243 4242

# set volumes /data = /mnt/user for backing up unraid shares /config = where config files are stored for crashplan.
VOLUME /data /config

