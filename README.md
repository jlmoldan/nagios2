# nagios2<br>
 Create a Dockerfile<br>

######Dockerfile######<br>
FROM ubuntu <br> 
MAINTAINER Jason Moldan<br> 

RUN apt-get update   <br> 
RUN apt-get install git expect -y  <br> 
RUN git clone https://github.com/jlmoldan/nagios2.git  <br> 
RUN chmod +x nagios2/*  <br> 

#CMD /etc/init.d/apache2 start && /etc/init.d/nagios3 start  <br> 


# Next Steps
Build the docker image with:   docker build -t nervios . --no-cache <br>
after the build is complete enter the container (docker run -it %imagename%) <br> 
run the two scripts and answer the questions. <br> 
sh nagios2/naginstall.sh <br> 
sh nagios2/naginstall2.sh <br> 
 and now hopefully it runs. <br> 

