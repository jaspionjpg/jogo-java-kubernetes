FROM openjdk:11-jdk

RUN mkdir /usr/myapp
COPY build/libs/*.jar app.jar
WORKDIR /usr/myapp
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]

# Criando projeto Spring WEB/Gradle/Java11

# buildando imagem java
# ./gradlew clean build
# sudo docker build --force-rm -t jogokubernetes-teste  .
# sudo docker run --name jogo -p 8080:8080 -d -t jogokubernetes-teste:latest
# sudo docker logs -f 084

# parando imagem docker
# sudo docker stop jogo
# sudo docker container rm jogo

# instalando virtualbox/docker/kubernetes
# https://matthewpalmer.net/kubernetes-app-developer/articles/install-kubernetes-ubuntu-tutorial.html

# exemplo para rodar o kubernetes
# https://www.youtube.com/watch?v=o8Nwdku_Cj0

# criando maquina virtual kubernetes
# minikube -p dev.to start --cpus 2 --memory=4098
# minikube -p dev.to addons enable ingress
# minikube -p dev.to addons enable metrics-server
# kubectl create namespace dev-to


# deploy application configs
# kubectl apply -f k8s/app/
# kubectl delete -f k8s/app/

# deploy apllication docker
# eval $(minikube -p dev.to docker-env) && docker build --force-rm -t java-k8s .

# check application
# kubectl get pods -n dev-to
# kubectl get rs -n dev-to
# rodar dashboard do cluster local
# minikube -p dev.to dashboard -- http://192.168.99.100:30000/#!/cluster?namespace=dev-to
# k logs -f -n dev-to {{name pod}}

# export url
# kubectl port-forward -n dev-to <pod_name> 8080:8080
# escala a aplicação
# kubectl -n dev-to scale deployment/jogo --replicas=3

# pega a url da aplicacao
# minikube service -n dev-to jogo --url


