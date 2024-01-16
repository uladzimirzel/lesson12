FROM tomcat:9.0.84-jdk11-temurin-jammy
RUN apt update -y
RUN apt install maven -y
RUN apt install git -y
ENV CLONE_REP=/usr/app
WORKDIR $CLONE_REP
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample
ENV BUILD_REP=/usr/app/boxfuse-sample-java-war-hello
WORKDIR $BUILD_REP
RUN mvn clean package
RUN cp -r target/hello-1.0.war /usr/local/tomcat/webapps
ENV START_TOMCAT=/usr/local/tomcat/
WORKDIR $START_TOMCAT
RUN cp -r webapps.dist/* webapps