# nagios2<br>
 Create Dockerfile<br>
 docker build -t nagios . --no-cache<br>

######Dockerfile######<br>
FROM ubuntu <br> 
MAINTAINER Jason Moldan<br> 

RUN apt-get update<br> 
RUN apt-get install git expect -y<br> 
RUN git clone https://github.com/jlmoldan/nagios2.git<br> 
#RUN /usr/bin/expect /nagios2/nagpre.exp<br> 

CMD /etc/init.d/apache2 start && /etc/init.d/nagios3 start<br> 

# Next Steps
after the build is complete enter the container (docker run -it %imagename%)<br> 
run the two scripts and answer the questions.<br> 
sh /nagios2/naginstall.sh<br> 
sh /nagios2/nagnstall2.sh<br> 
 and now hopefully it runs.<br> 

