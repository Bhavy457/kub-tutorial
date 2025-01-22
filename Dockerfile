# Use a base OpenJDK image to compile the code
FROM openjdk:17-jdk-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY Main.java .

# Compile the Java code inside the container
RUN javac Main.java

# Create a new stage to run the compiled application
FROM openjdk:17-jdk-slim

# Set the working directory in the new container
WORKDIR /app

# Copy the compiled Java class from the build stage
COPY --from=build /app/Main.class .

# Run the application
CMD ["java", "Main"]
