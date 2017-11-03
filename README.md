# nagios2<br>
# Create Dockerfile<br>
# docker build -t nagios . --no-cache<br>

######Dockerfile######<br>
FROM ubuntu <br> 
MAINTAINER Jason Moldan<br> 

RUN apt-get update<br> 
RUN apt-get install git expect -y<br> 
RUN git clone https://github.com/jlmoldan/nagios2.git<br> 
RUN /usr/bin/expect /nagios2/nagpre.exp<br> 

CMD /etc/init.d/apache2 start && /etc/init.d/nagios3 start<br> 

