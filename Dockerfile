FROM tomcat:9-alpine
RUN apk update && \
    apk add maven && \
    apk add openjdk-11 && \
    apk add git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR /boxfuse-sample-java-war-hello
RUN mvn clean package
RUN cp /boxfuse-sample-java-war-hello /usr/local/tomcat/webapps