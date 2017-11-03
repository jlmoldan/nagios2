# nagios2
# Create Dockerfile
# docker build -t nagios . --no-cache

######Dockerfile######
FROM ubuntu
MAINTAINER Jason Moldan

RUN apt-get update
RUN apt-get install git expect -y
RUN git clone https://github.com/jlmoldan/nagios2.git
RUN chmod +x nagios2/naginstall.sh
RUN /usr/bin/expect nagios2/nagpre.exp
#RUN  htpasswd -i -db /htpasswd /usr/local/nagios/etc/htpasswd.users nagiosadmin PassWord
         
CMD /etc/init.d/apache2 start && /etc/init.d/nagios3 start
