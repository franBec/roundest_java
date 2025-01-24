# roundest_java

## Project Overview
This project is implemented in **Java Spring Boot 3** and provides a RESTful API for "The roundest Pokémon" type exercise. It is part of a group of repositories that all aim to solve the same exercise using different backend languages.

- [roundest_groovy](https://github.com/franBec/roundest_groovy)
- roundest_java (this one)
- [roundest_kotlin](https://github.com/franBec/roundest_kotlin)

## API Documentation
The OpenAPI documentation for the API can be found in the [src/main/resources/openapi/roundest.yaml file](https://github.com/franBec/roundest_java/blob/main/src/main/resources/openapi/roundest.yaml).

## Getting Started

### Prerequisites
- For running with IntelliJ:
    - **IntelliJ** (Community Edition works fine)
- For containerized deployment
    - **Docker**

### Run Locally with IntelliJ
1. Clone the repository:
    ```bash
    git clone https://github.com/franBec/roundest_java
    ```
2. Open the project in IntelliJ IDEA.
3. Set the environment variable `SPRING_PROFILES_ACTIVE` to `dev` for local development.
4. Run the application from the IntelliJ run configurations.

### Build for production

This project is meant to be run alongside a database. For a complete setup, use the `docker-compose` configuration provided in the [roundest_docker_compose](https://github.com/franBec/roundest_docker_compose) repository.

## Author
Franco Exequiel Becvort <🐤/>
- [Linkedin](https://www.linkedin.com/in/franco-becvort/)
- [Website](https://pollito.dev/)

This project is intended for educational purposes.
