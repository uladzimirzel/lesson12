FROM tomcat:9.0.84-jdk11-temurin-jammy
RUN apt update -y
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install git -y
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample
RUN cd App42PaaS-Java-MySQL-Sample
RUN mvn clean package