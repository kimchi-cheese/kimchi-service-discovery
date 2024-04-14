FROM openjdk:17-jdk-alpine
LABEL authors="changmin.kim"
EXPOSE 8761

COPY build/libs/kimchi-service-discovery-0.0.1-SNAPSHOT.jar /app/kimchi-service-discovery.jar
WORKDIR /app

ENTRYPOINT ["java", "-jar", "kimchi-service-discovery.jar"]