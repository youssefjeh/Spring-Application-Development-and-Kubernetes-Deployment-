FROM openjdk:13
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN chmod +x mvnw
RUN ./mvnw package
ENV PORT 5000
EXPOSE $PORT
CMD ["./mvnw", "spring-boot:run", "-Dserver.port=${PORT}"]

