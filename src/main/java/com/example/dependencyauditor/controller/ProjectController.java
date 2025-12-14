package com.example.dependencyauditor.controller;

import com.example.dependencyauditor.model.Project;
import com.example.dependencyauditor.model.Vulnerability;
import com.example.dependencyauditor.service.DependencyAuditorService;
import com.example.dependencyauditor.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/projects")
@Tag(name = "Project Management", description = "APIs for managing software projects and their dependencies")
public class ProjectController {

    @Autowired
    private ProjectRepository projectRepository;

    @Autowired
    private DependencyAuditorService auditorService;

    @GetMapping
    @Operation(summary = "Get all projects", description = "Retrieve a list of all software projects in the system")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Successfully retrieved all projects",
                    content = @Content(mediaType = "application/json", 
                    schema = @Schema(implementation = Project.class)))
    })
    public List<Project> getAllProjects() {
        return projectRepository.findAll();
    }

    @GetMapping("/{id}")
    @Operation(summary = "Get project by ID", description = "Retrieve a specific project by its unique identifier")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Project found",
                    content = @Content(mediaType = "application/json", 
                    schema = @Schema(implementation = Project.class))),
            @ApiResponse(responseCode = "404", description = "Project not found")
    })
    public ResponseEntity<Project> getProjectById(
            @Parameter(description = "Unique identifier of the project", required = true)
            @PathVariable String id) {
        Optional<Project> project = projectRepository.findById(id);
        return project.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    @Operation(summary = "Create new project", description = "Create a new software project with dependencies")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Project created successfully",
                    content = @Content(mediaType = "application/json", 
                    schema = @Schema(implementation = Project.class))),
            @ApiResponse(responseCode = "400", description = "Invalid project data")
    })
    public Project createProject(
            @Parameter(description = "Project data to create", required = true)
            @RequestBody Project project) {
        return projectRepository.save(project);
    }

    @PutMapping("/{id}")
    @Operation(summary = "Update project", description = "Update an existing project with new data")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Project updated successfully",
                    content = @Content(mediaType = "application/json", 
                    schema = @Schema(implementation = Project.class))),
            @ApiResponse(responseCode = "404", description = "Project not found"),
            @ApiResponse(responseCode = "400", description = "Invalid project data")
    })
    public Project updateProject(
            @Parameter(description = "Unique identifier of the project", required = true)
            @PathVariable String id, 
            @Parameter(description = "Updated project data", required = true)
            @RequestBody Project project) {
        project.setId(id);
        return projectRepository.save(project);
    }

    @DeleteMapping("/{id}")
    @Operation(summary = "Delete project", description = "Delete a project from the system")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Project deleted successfully"),
            @ApiResponse(responseCode = "404", description = "Project not found")
    })
    public ResponseEntity<Void> deleteProject(
            @Parameter(description = "Unique identifier of the project", required = true)
            @PathVariable String id) {
        if (projectRepository.existsById(id)) {
            projectRepository.deleteById(id);
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.notFound().build();
    }

    @GetMapping("/{id}/vulnerabilities")
    @Operation(summary = "Check vulnerabilities", description = "Scan project dependencies for known security vulnerabilities")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Vulnerability scan completed",
                    content = @Content(mediaType = "application/json", 
                    schema = @Schema(implementation = Vulnerability.class))),
            @ApiResponse(responseCode = "404", description = "Project not found")
    })
    public List<Vulnerability> checkVulnerabilities(
            @Parameter(description = "Unique identifier of the project", required = true)
            @PathVariable String id) {
        return auditorService.checkVulnerabilities(id);
    }

    @GetMapping("/{id}/updates")
    @Operation(summary = "Suggest dependency updates", description = "Get recommendations for updating project dependencies")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Update suggestions retrieved successfully"),
            @ApiResponse(responseCode = "404", description = "Project not found")
    })
    public List<String> suggestUpdates(
            @Parameter(description = "Unique identifier of the project", required = true)
            @PathVariable String id) {
        return auditorService.suggestDependencyUpdates(id);
    }
}
