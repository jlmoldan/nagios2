#!/bin/bash
# Core install after all the pre reqs.




                                apt-get update
 
                                apt-get -y  install nagios-plugins 
                                sleep 2
                                apt-get -y  install nagios3 
                                sleep 2  
                                apt-get -y  install nagios-plugins-basic nagios-plugins-extra nagios-snmp-plugins nagios-nrpe-plugin nagios3-core nagios-plugins-standard nagios3-cgi nagios-plugins-contrib
                                apt-get -y  install libssl-dev openssh-server openssh-client ntpdate snmp smbclient libldap-2.4-2 libldap2-dev  unzip
                                sleep 2

                                sed -i 's/check_external_commands=0/check_external_commands=1/g' /etc/nagios3/nagios.cfg

                                /usr/sbin/usermod -a -G www-data nagios
                                chmod -R g+wx /var/lib/nagios3/
				##jlmadd/fix apache
				#mkdir /etc/apache2/conf.d 
				## taken from http://xubuntugeek.blogspot.com/2012/07/solved-apache2-could-not-reliably.html
				#echo "ServerName localhost" > /etc/apache2/conf.d/name

                                /etc/init.d/nagios3 restart

                                /etc/init.d/apache2 restart
                                sleep 2
                                IP=`/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
                                echo -e "\n\tNow Nagios is ready to be used via: http://$IP/nagios3"
                                exit 0
