package com.example.dependencyauditor.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.List;

@Document(collection = "projects")
@Schema(description = "Software project containing dependencies to be audited")
public class Project {
    @Id
    @Schema(description = "Unique identifier of the project", example = "60f7b3b3b3f3f3f3f3f3f3f3", accessMode = Schema.AccessMode.READ_ONLY)
    private String id;
    
    @Schema(description = "Name of the project", example = "E-commerce Web Application", required = true)
    private String name;
    
    @Schema(description = "Description of the project", example = "Online shopping platform with Spring Boot backend")
    private String description;
    
    @Schema(description = "List of dependencies used in the project")
    private List<Dependency> dependencies;

    // Constructors
    public Project() {}

    public Project(String name, String description, List<Dependency> dependencies) {
        this.name = name;
        this.description = description;
        this.dependencies = dependencies;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Dependency> getDependencies() {
        return dependencies;
    }

    public void setDependencies(List<Dependency> dependencies) {
        this.dependencies = dependencies;
    }
}
