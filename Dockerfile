FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/User-Ms-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8000
ENV JAVA_OPTS=""
RUN sh -c "touch User-Ms-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "User-Ms-0.0.1-SNAPSHOT.jar" ]
