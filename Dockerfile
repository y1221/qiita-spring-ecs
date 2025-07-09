FROM amazoncorretto:21 AS base
WORKDIR /app
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080

FROM base AS dev
EXPOSE 5005
ENTRYPOINT ["java", "-Djava.net.preferIPv4Stack=true", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=*:5005", "-jar", "/app/app.jar"]

FROM base AS prod
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
