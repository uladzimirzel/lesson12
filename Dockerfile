FROM openjdk:8-jdk-alpine
ENV APP_NAME App42PaaS-Java-MySQL-Sample
ENV APP_HOME /usr/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY target/$APP_NAME.jar $APP_HOME/$APP_NAME.jar
EXPOSE 8080
CMD ["java", "-jar", "App42PaaS-Java-MySQL-Sample.jar"]