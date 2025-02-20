# Use uma imagem base com o JDK (Java Development Kit)
FROM openjdk:11-jdk-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie a pasta src/main/java para o diretório de trabalho
COPY src/main/java /app/src/main/java

# Defina o diretório de trabalho para a pasta onde estão os arquivos Java
WORKDIR /app/src/main/java

# Compile o código Java
RUN javac Executavel.java

# Comando para rodar o programa Java
CMD ["java", "Executavel"]