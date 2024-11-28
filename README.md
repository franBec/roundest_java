# roundest_java

## Project Overview
This project is implemented in **Java Spring Boot 3** and provides a RESTful API for "The roundest Pokémon" type exercise.

## API Documentation
The OpenAPI documentation for the API can be found in the [src/main/resources/openapi/roundest.yaml file](https://github.com/franBec/roundest_java/blob/main/src/main/resources/openapi/roundest.yaml).

## Getting Started

### Prerequisites
- For running with Maven:
    - **Java 21**
    - **Maven**
- For containerized deployment
    - **Docker**

### Run with Maven
1. Clone the repository:
    ```bash
    git clone https://github.com/franBec/user_manager_backend
    ```
2. Navigate to the project directory:
    ```bash
    cd user_manager_backend
    ```
3. Build and run the application using Maven:
    ```bash
    mvn spring-boot:run
    ```
### Run with Docker
1. Clone the repository:
     ```bash
     git clone https://github.com/franBec/user_manager_backend
     ```
2. Navigate to the project directory:
    ```bash
    cd user_manager_backend
    ```
3. Build the Docker image:
    ```bash
    docker build -t user_manager_backend .
    ```
4. Run the Docker container:
     ```bash
     docker run -p 8080:8080 user_manager_backend
     ```

## Author
Franco Exequiel Becvort <🐤/>
- [Linkedin](https://www.linkedin.com/in/franco-becvort/)
- [Website](https://pollito.dev/)

This project is intended for educational purposes.