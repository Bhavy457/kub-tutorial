FROM openjdk:17-jdk-slim
WORKDIR /app
COPY Main.class .
CMD ["java", "Main"]
