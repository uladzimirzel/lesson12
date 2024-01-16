FROM tomcat:9-jdk11
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven 
RUN apt install -y git 
WORKDIR /user/app
RUN git clone https://github.com/uladzimirzel/APP422
WORKDIR /user/app/App42
RUN mvn package
RUN mv /user/app/App42/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps