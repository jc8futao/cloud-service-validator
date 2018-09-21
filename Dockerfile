FROM adoptopenjdk/openjdk8-openj9:jdk8u162-b12_openj9-0.8.0
ENV PATH $JAVA_HOME/bin:$PATH
WORKDIR /var/
COPY build/libs/app.jar app.jar
COPY config/application.properties application.properties
ENTRYPOINT ["java", "-jar", "app.jar"]
EXPOSE 8080
