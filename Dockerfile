# Comece com uma imagem base contendo Java Runtime
FROM openjdk:17-jdk-alpine

# Cria o diretório /app
RUN mkdir /app

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos necessários para o contêiner (por exemplo, o arquivo JAR do seu projeto)
COPY scripts/V1_movies.sql /app/V1_movies.sql

# Execute the application when started
CMD ["java", "-jar", "seu-projeto.jar"]
