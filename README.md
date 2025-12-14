# Software-Dependency-Auditor

## Description

This project is a Spring Boot application designed to help developers manage and audit software dependencies. The application scans project dependencies for security vulnerabilities and provides suggestions for updates or alternative libraries. It aims to make dependency management more efficient and secure across different software projects.

## Problem Statement

In modern software development, managing dependencies is a critical but challenging task. Libraries and frameworks frequently release updates to address security vulnerabilities, but developers often struggle to keep track of these changes across multiple projects. Without proper auditing tools, projects can become vulnerable to security threats, and outdated dependencies can lead to compatibility issues. This project addresses the need for a centralized system to monitor dependency health and provide actionable recommendations for maintaining secure and up-to-date codebases.

## Technologies Used

The project utilizes the following technologies:
- Java 21 for the backend implementation
- Spring Boot 3.2.0 for the application framework
- MongoDB for data storage
- Maven for dependency management and build automation
- Swagger/OpenAPI for API documentation

## Methodology

The development approach focused on creating a robust REST API with clear separation of concerns. The application follows a layered architecture with distinct components for data access, business logic, and API endpoints. Core functionality includes CRUD operations for managing software projects and their dependencies, vulnerability scanning capabilities, and update recommendation features. The implementation prioritizes clean code practices, comprehensive API documentation, and ease of use for developers.

## Development Setup

During development, I set up the following environment and followed these steps to build and test the application:

Prerequisites installed:
- Java 21
- Maven 3.6+
- MongoDB 4.4+

Development workflow:

1. Initialize the project structure with Spring Boot
2. Configure MongoDB connection and repositories
3. Implement the REST API endpoints for project and dependency management
4. Add vulnerability scanning logic and update recommendation features
5. Set up Swagger/OpenAPI documentation
6. Build the project:
   ```bash
   mvn clean compile
   ```
7. Run the application for testing:
   ```bash
   mvn spring-boot:run
   ```
8. Access the API documentation at http://localhost:8080/swagger-ui.html
9. Test with sample data:
   ```bash
   add-sample-data.bat
   ```

## Screenshots

### Swagger UI Interface
The main API documentation interface accessible at `/swagger-ui.html`:

![Swagger UI](./Output%20Images/Swagger%20Output.png)

### API Response Example
Sample response from the GET projects endpoint showing the JSON structure:

![API Response](./Output%20Images/Get%20Projects%20API%20Response.png)

### Vulnerability Scanning
Example of vulnerability scanning results for project dependencies:

![Vulnerability Scan](./Output%20Images/Vulnerability%20Swagger%20Output.png)

## Results

The application successfully provides a comprehensive solution for dependency auditing. Users can create and manage software projects, perform vulnerability scans on dependencies, and receive recommendations for updates. The Swagger UI interface makes the API accessible for testing and integration. Sample data demonstrates various real-world scenarios, showing how the tool can be applied to different types of software projects.

## Conclusion

This project demonstrates the importance of proactive dependency management in software development. By providing an automated auditing system, it helps developers maintain more secure and reliable applications. Future enhancements could include integration with additional vulnerability databases, automated CI/CD pipeline integration, and support for more programming languages and package managers. The project serves as a foundation for understanding dependency management challenges and implementing effective solutions.
