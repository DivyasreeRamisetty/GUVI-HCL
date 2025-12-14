package com.example.dependencyauditor.model;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "Software dependency information")
public class Dependency {
    @Schema(description = "Name of the dependency", example = "spring-boot-starter-web", required = true)
    private String name;
    
    @Schema(description = "Version of the dependency", example = "3.1.0", required = true)
    private String version;
    
    @Schema(description = "Maven group ID", example = "org.springframework.boot", required = true)
    private String groupId;
    
    @Schema(description = "Maven artifact ID", example = "spring-boot-starter-web", required = true)
    private String artifactId;

    // Constructors
    public Dependency() {}

    public Dependency(String name, String version, String groupId, String artifactId) {
        this.name = name;
        this.version = version;
        this.groupId = groupId;
        this.artifactId = artifactId;
    }

    // Getters and Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getArtifactId() {
        return artifactId;
    }

    public void setArtifactId(String artifactId) {
        this.artifactId = artifactId;
    }
}
