package com.example.dependencyauditor.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.License;
import io.swagger.v3.oas.models.servers.Server;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.List;

@Configuration
public class SwaggerConfig {

    @Bean
    public OpenAPI customOpenAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("Software Dependency Auditor API")
                        .version("1.0.0")
                        .description("REST API for managing software projects and auditing their dependencies for vulnerabilities")
                        .contact(new Contact()
                                .name("Dependency Auditor Team")
                                .email("support@dependencyauditor.com")
                                .url("https://github.com/example/dependency-auditor"))
                        .license(new License()
                                .name("MIT License")
                                .url("https://opensource.org/licenses/MIT")))
                .servers(List.of(
                        new Server()
                                .url("http://localhost:8080")
                                .description("Development Server"),
                        new Server()
                                .url("https://api.dependencyauditor.com")
                                .description("Production Server")));
    }
}
