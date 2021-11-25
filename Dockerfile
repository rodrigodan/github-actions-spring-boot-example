FROM openjdk:11
EXPOSE 8080
ADD target/springboot-images-new.jar springboot-images-new.jar
ENTRYPOINT ["Java","-jar","/springboot-images-new.jar"]