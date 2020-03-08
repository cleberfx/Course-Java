FROM cloudera/quickstart:latest
#gitpod/workspace-mysql



USER root
# Install custom tools, runtime, etc.


RUN apt-get update && apt-get install -y \
        git-flow \
	graphviz \
	&& apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
RUN chmod -R 777 /zeppelin	

	

#USER gitpod
# Apply user-specific settings
	#RUN bash -c "npm install -g generator-jhipster
	#&& npm install -g @angular/cli" 
	
 	

 #Give back control

#FROM cloudera/quickstart:latest


USER root
#COPY --from=I1 / .


	
