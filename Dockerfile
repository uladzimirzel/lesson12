FROM tomcat:9-jdk11
RUB apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/uladzimirzel/App42.git
WORKDIR /App42
RUN mvn package
RUN mv /App42/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps