FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/springboot-images-new.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} springboot-images-new.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","springboot-images-new.jar"]
