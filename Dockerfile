FROM openjdk:11-jdk

RUN mkdir /usr/myapp
COPY build/libs/*.jar app.jar
WORKDIR /usr/myapp
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]

# ./gradlew clean build
# sudo docker build --force-rm -t jogokubernetes-teste  .
# sudo docker run --name jogo -p 8080:8080 -d -t jogokubernetes-teste:latest
# sudo docker logs -f 084

# sudo docker stop jogo
# sudo docker container rm jogo

