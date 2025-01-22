# Use an official OpenJDK image as the base
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Create a simple HelloWorld.java file inside the container
RUN echo 'public class HelloWorld {' > HelloWorld.java && \
    echo '  public static void main(String[] args) {' >> HelloWorld.java && \
    echo '    System.out.println("Hello, World!");' >> HelloWorld.java && \
    echo '  }' >> HelloWorld.java && \
    echo '}' >> HelloWorld.java

# Compile the Java program
RUN javac HelloWorld.java

# Run the Java program
CMD ["java", "HelloWorld"]
