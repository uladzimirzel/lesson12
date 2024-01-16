FROM maven:3.8-jdk-11-slim as build
RUN apt update -y
RUN apt install git -y
RUN git clone https://github.com/uladzimirzel/APP422.git
WORKDIR ./APP422
RUN mvn clean package

FROM tomcat:9.0-alpine
WORKDIR /usr/local/tomcat/
COPY --from=build /APP422/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps