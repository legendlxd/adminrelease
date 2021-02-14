FROM java:alpine
VOLUME /tmp
ADD mogu_admin-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar' 
ENTRYPOINT ["java","-Xms256m","-Xmx256m","-jar","/app.jar"]
