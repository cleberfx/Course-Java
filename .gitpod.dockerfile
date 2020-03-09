FROM suhothayan/hadoop-spark-pig-hive:2.9.2
#gitpod/workspace-mysql



USER root
# Install custom tools, runtime, etc.


RUN apt-get update && apt-get install -y \
        git-flow \
	graphviz \
	&& apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
#RUN chmod -R 777 /zeppelin	
#RUN chmod -R 777 /run
#RUN chmod -R 777 /etc
#RUN chmod -R 777 /usr
#RUN chown gitpd:root /usr/bin/sudo

USER gitpod
# Apply user-specific settings
	#RUN bash -c "npm install -g generator-jhipster \
	#&& npm install -g @angular/cli" 
	#RUN chown gitpod:gitpod /usr/bin/sudo && chmod 4777 /usr/bin/sudo
#RUN sudo chown gitpd /usr/bin/sudo 	

 #Give back control

#FROM cloudera/quickstart:latest


USER root
#COPY --from=I1 / .


	
