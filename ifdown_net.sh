#!/bin/sh
#=============================================================#
# Name:         If Down Net                                   #
# Description:  Checking the net by ping and restart          #
#               interface if is need                          #
# Version:      ver 1.0                                       #
# Data:         10.7.2014                                     #
# Author:       Arthur (Berserkr) Gareginyan                  #
# Author URI:   http://mycyberuniverse.com/author.html        #
# Email:        arthurgareginyan@gmail.com                    #
# License:      GNU General Public License, version 3 (GPLv3) #
# License URI:  http://www.gnu.org/licenses/gpl-3.0.html      #
#=============================================================#
 
#                       USAGE:
#               chmod +x ifdown_net.sh
#     Add folowing line to the end of the /etc/crontab :
#     */1  *    * * *   root    /home/user/ifdown_net.sh
 
# The host to test by ping. You can use IP or domain name.
HOST="192.168.1.1"
 
# The device wich need to reload
DEVICE='wlan0'
 
########################## BEGIN ##############################
# Check the availability of a host
ping -c 3 $HOST >/dev/null 2>&1
 
# Restart interface if host is down
if [ $? -ne 0 ] ; then
        ifup $DEVICE ; 
fi
 
exit 0
