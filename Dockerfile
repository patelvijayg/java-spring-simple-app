FROM openjdk:8-alpine

ADD target/0.0.1-SNAPSHOT-*.jar /app/application.jar

EXPOSE 8080

#ENTRYPOINT ["java","-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005","-jar", "/app/application.jar"]
ENTRYPOINT ["java", "-jar", "/app/application.jar"]