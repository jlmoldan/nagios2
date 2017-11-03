# nagios2<br>
# Create Dockerfile<br>
# docker build -t nagios . --no-cache<br>

######Dockerfile######<br>
FROM ubuntu<br>
MAINTAINER Jason Moldan<br>

RUN apt-get update<br>
RUN apt-get install git expect -y<br>
RUN git clone https://github.com/jlmoldan/nagios2.git<br>
RUN chmod +x nagios2/naginstall.sh<br>
RUN usr/bin/expect /nagios2/nagpre.exp <br>
#RUN  htpasswd -i -db /htpasswd /usr/local/nagios/etc/htpasswd.users nagiosadmin PassWord<br>
         
CMD /etc/init.d/apache2 start && /etc/init.d/nagios3 start<br>
