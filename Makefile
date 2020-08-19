SHELL = /bin/bash

jogo-build:
	./gradlew clean build
	sudo docker build --force-rm -t jogokubernetes .

ab-build:
	./gradlew clean build;
	sudo docker build --force-rm -t jogokubernetes-ab .

docker-run:
    sudo docker run --name jogo -p 8080:8080 -d -t jogokubernetes:latest

docker-stop:
    sudo docker stop jogo
    sudo docker container rm jogo