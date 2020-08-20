FROM openjdk:11-jdk

RUN mkdir /usr/myapp
COPY build/libs/*.jar app.jar
WORKDIR /usr/myapp
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java --enable-preview $JAVA_OPTS -jar /app.jar" ]

# Criando projeto Spring WEB/Gradle/Java11
#sudo docker run --name mysql57 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_USER=java -e MYSQL_PASSWORD=1234 -e MYSQL_DATABASE=k8s_java -d mysql/mysql-server:5.7
#docker stop mysql57

# buildando imagem java
# ./gradlew clean build
# sudo docker build --force-rm -t jogokubernetes  .
# sudo docker run --name jogo -p 8080:8080 -d -t jogokubernetes:latest
# sudo docker logs -f 084

# parando imagem docker
# sudo docker stop jogo
# sudo docker container rm jogo

# instalando virtualbox/docker/kubernetes
# https://matthewpalmer.net/kubernetes-app-developer/articles/install-kubernetes-ubuntu-tutorial.html

# exemplo para rodar o kubernetes
# https://www.youtube.com/watch?v=o8Nwdku_Cj0

# doc ingress
# https://docs.traefik.io/v1.7/user-guide/kubernetes/

# criando maquina virtual kubernetes
# minikube -p dev.to start --cpus 2 --memory=4098
# minikube -p desenv2 addons enable ingress
# minikube -p desenv2 addons enable metrics-server
# kubectl create namespace dev-to
#minikube start --kubernetes-version v1.18.0

# deploy application configs
# kubectl apply -f k8s/app/
# kubectl delete -f k8s/app/

# deploy apllication docker
# eval $(minikube -p desenv2 docker-env) && docker build --force-rm -t jogokubernetes .

# check application
# kubectl get pods -n dev-to
# kubectl get rs -n dev-to
# rodar dashboard do cluster local
# minikube -p dev.to dashboard -- http://192.168.99.100:30000/#!/cluster?namespace=dev-to
# k logs -f -n dev-to {{name pod}}
# http://dev.local/app/hello

# export url
# kubectl port-forward -n dev-to <pod_name> 8080:8080
# escala a aplicação
# kubectl -n dev-to scale deployment/jogo --replicas=3

# pega a url da aplicacao
# minikube service -n dev-to jogo --url





#TODO
#Ingress
#metadata:
#  annotations:
#    traefik.ingress.kubernetes.io/service-weights: |
#      my-app: 99%
#      my-app-canary: 1%
#  name: my-app
#spec:
#  rules:
#  - http:
#      paths:
#      - backend:
#          serviceName: my-app
#          servicePort: 80
#        path: /
#      - backend:
#          serviceName: my-app-canary
#          servicePort: 80
#        path: /