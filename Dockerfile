
FROM maven:3.6.0-jdk-11-slim AS building
ENV SUITE = "all"
WORKDIR /app
COPY src /app/src
COPY pom.xml /app/
COPY entrypoint.sh /app/
RUN chmod +x  /app/entrypoint.sh


ENTRYPOINT ["/app/entrypoint.sh"]
#
#FROM adoptopenjdk/openjdk11 AS running
#RUN mkdir -p /opt
#COPY --from=building /app/target/*.jar /target/app.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","/target/app.jar"]
