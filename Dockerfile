FROM tomcat:9.0.84-jdk11-temurin-jammy
RUN apt update -y
RUN apt install maven -y
RUN apt install git -y
WORKDIR /usr/app
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample
WORKDIR /usr/app/App42
RUN mvn package
RUN mv /usr/appApp42/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/localtomcat/webapps