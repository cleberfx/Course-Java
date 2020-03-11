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
RUN chmod -R 777 /usr/local
#RUN chown gitpd:root /usr/bin/sudo

ENV HADOOP_HOME /usr/local/hadoop
#ENV HDFS_NAMENODE_USER root
#ENV HDFS_DATANODE_USER root
#ENV HDFS_SECONDARYNAMENODE_USER root
#ENV YARN_RESOURCEMANAGER_USER root
#ENV YARN_NODEMANAGER_USER root
ENV HADOOP_COMMON_HOME $HADOOP_HOME
ENV HADOOP_HDFS_HOME $HADOOP_HOME
ENV HADOOP_MAPRED_HOME $HADOOP_HOME
ENV HADOOP_YARN_HOME $HADOOP_HOME
ENV HADOOP_CONF_DIR /usr/local/hadoop/etc/hadoop

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

RUN chmod 777 /etc/hosts
RUN sed -i "s|127.0.0.1	localhost||g" /etc/hosts	
