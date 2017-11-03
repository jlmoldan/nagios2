#!/bin/bash
### Taken from https://exchange.nagios.org/directory/Distributions/Packaged-Distributions/Nagios-Installer-script-for-Ubuntu-2FDebian-2FRHEL-2FCentOS/details
### added some things to make work in dockers that are stripped down 
### JasonMoldan

### pre work
apt-get update
apt-get install --yes vim net-tools apt-utils

########################################################
#### Installation Starts ######
########################################################

chk_user()
{
        if [ $(whoami) != "root" ]
        then
                echo -e "\n\t\033[44;37;5m###### WARNING ######\033[0m"
                echo -e "\t${txtylw}${txtbld}Sorry ${txtgrn}$(whoami)${txtrst}${txtylw}${txtbld}, you must login as root user to run this script.${txtrst}" 
                echo -e "\t${txtylw}${txtbld}Please become root user using 'sudo -s' and try again.${txtrst}"
                echo -e
                echo -e "\t${txtred}${txtbld}Quitting Installer.....${txtrst}\n"
                sleep 3
        exit 1
        fi
}

### Ubuntu/Debian type servers. ####
chk_user
                                apt-get update
                                apt-get upgrade -y
                                apt-get -y  install apache2 build-essential wget perl openssl 
                               
                                exit 0




