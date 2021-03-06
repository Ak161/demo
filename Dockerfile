FROM openjdk:8u181-jdk-alpine

WORKDIR /home/apps/

COPY out/artifacts/provider_jar /home/apps/

COPY target/*.jar app.jar

ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar -Xmx256m app.jar" ]
