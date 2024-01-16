FROM tomcat:9.0.84-jdk11-temurin-jammy
RUN apt update
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello
RUN mvn clean package
RUN cp /boxfuse-sample-java-war-hello /usr/local/tomcat/webapps