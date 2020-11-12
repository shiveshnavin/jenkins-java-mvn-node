from jenkins/jenkins:lts

# Jenkins Java and Maven 

# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y nodejs default-jre default-jdk 

RUN wget -q https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip 
RUN cp apache-maven-3.6.3-bin.zip  /opt/apache-maven-3.6.3-bin.zip 
RUN cd /opt && unzip -q apache-maven-3.6.3-bin.zip  && ls

ENV PATH="/opt/apache-maven-3.6.3-bin/bin:${PATH}"

# drop back to the regular jenkins user - good practice
USER jenkins


