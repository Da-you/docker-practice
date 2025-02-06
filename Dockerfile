# 베이스 이미지 지정
FROM openjdk:21-jdk

VOLUME /tmp

ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar", "/app.jar"]