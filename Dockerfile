## Estágio de Compilação 
## Uma inagem do linux para compilar o projeto
FROM ubuntu:latest AS build

## Instalar o JAVA
RUN ap-get update
RUN apt-get install -y openjdk-21-jdk

## Instalar o maven
RUN apt-get install -y maven

## COPY do projeto para dentro do container
COPY . .

## Compilar o projeto com o maven
RUN mvn clean install

## Execução do projeto
FROM eclipse-temurin:21-jammy

## Expor a porta 8080
EXPOSE 8080

## Copiar o Aquivo JAR da compilação para o container de Execução
COPY --from=build /target/gamestore-0.0.1-SNAPSHOT.jar app.jar

## Definir o comando de inicialização do container
ENTRYPOINT ["java", "-jar", "app.jar"]