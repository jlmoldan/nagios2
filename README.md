# nagios2<br>
 Create a Dockerfile<br>

######Dockerfile######<br>
FROM ubuntu<br>
<br>
RUN apt-get update<br>
RUN apt-get install git -y<br>
RUN git clone https://github.com/jlmoldan/nagios2.git<br>
RUN chmod +x nagios2/*<br>
<br>
EXPOSE 80<br>
CMD /etc/init.d/apache2 start -D FOREGROUND && /etc/init.d/nagios3 start -D FOREGROUND<br>

<br>
# Next Steps

docker build -t nervious . <br>
docker run -it nervious /bin/bash<br>
sh nagios2/naginstall.sh<br>
(((Will ask 2-4 questions - time zone, no email, and password...))<br>
exit<br>
docker commit %DOCKERID% nervious (where  %DOCKERID% is the container id just created)<br>
docker run -d -p 1999:80 nervious /usr/sbin/apache2ctl -D FOREGROUND<br>

logon via your ip:1999/nagios3 with password entered on prompts<br>
this image configured with central time, no email, and password as the password<br>
<br>

tag the image (here docker tag f1c5a5543686 jlmoldan/nervious)<br>
push to docker.io ::  docker push  jlmoldan/nervious<br>

<br>

run command to do it all from scratch...i.e. download and launch container<br>
# Download image and run
<br>
docker pull jlmoldan/nervious<br>
docker run -d -p 1999:80 jlmoldan/nervious /usr/sbin/apache2ctl -D FOREGROUND<br>


