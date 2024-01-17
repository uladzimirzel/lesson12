FROM tomcat:9-jdk11
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install git -y
WORKDIR /usr/app
RUN git clone https://github.com/uladzimirzel/App42.git
WORKDIR /usr/app/App42
RUN cp -r /usr/app/App42/WebContent/Config.properties /usr/app/App42/ROOT/
RUN mvn clean package
RUN mv /usr/app/App42/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps