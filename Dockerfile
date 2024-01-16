FROM tomcat:9.0.84-jdk11-temurin-jammy
RUN apt update -y
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample
RUN cd ~/App42PaaS-Java-MySQL-Sample
RUN mvn package
RUN mv /App42PaaS-Java-MySQL-Sample/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/localtomcat/webapps