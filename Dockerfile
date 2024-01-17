# Используйте образ с Java
FROM openjdk:8-jdk-alpine

# Установка переменной окружения для приложения
ENV APP_DIR /app
WORKDIR $APP_DIR

# Копирование JAR-файла в образ
COPY target/App42PaaS-Java-MySQL-Sample-1.0-SNAPSHOT.jar $APP_DIR/app.jar

# Запуск приложения
CMD ["java", "-jar", "app.jar"]