# Etapa 1: Build da aplicação
FROM maven:3.8.6-eclipse-temurin-17 AS build

# Definindo o diretório de trabalho no container
WORKDIR /app

# Copiando os arquivos Maven necessários para o build
COPY pom.xml ./
COPY src ./src

# Rodando o Maven para construir o artefato (JAR)
RUN mvn clean package -DskipTests

# Etapa 2: Runtime
FROM eclipse-temurin:17-jdk-alpine

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando o JAR construído na etapa anterior
COPY --from=build /app/target/*.jar growertech.jar

# Expondo a porta usada pela aplicação
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "/app/growertech.jar"]