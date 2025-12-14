package com.example.dependencyauditor.service;

import com.example.dependencyauditor.model.Project;
import com.example.dependencyauditor.model.Vulnerability;
import com.example.dependencyauditor.repository.ProjectRepository;
import com.example.dependencyauditor.repository.VulnerabilityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;
import java.util.Optional;

@Service
public class DependencyAuditorService {

    @Autowired
    private ProjectRepository projectRepository;

    @Autowired
    private VulnerabilityRepository vulnerabilityRepository;

    public List<Vulnerability> checkVulnerabilities(String projectId) {
        Optional<Project> projectOpt = projectRepository.findById(projectId);
        if (!projectOpt.isPresent()) {
            throw new RuntimeException("Project not found");
        }
        Project project = projectOpt.get();
        List<Vulnerability> vulnerabilities = new ArrayList<>();
        for (var dep : project.getDependencies()) {
            List<Vulnerability> vulns = vulnerabilityRepository.findByDependencyName(dep.getName());
            for (Vulnerability vuln : vulns) {
                if (isVersionAffected(dep.getVersion(), vuln.getAffectedVersion())) {
                    vulnerabilities.add(vuln);
                }
            }
        }
        return vulnerabilities;
    }

    public List<String> suggestDependencyUpdates(String projectId) {
        Optional<Project> projectOpt = projectRepository.findById(projectId);
        if (!projectOpt.isPresent()) {
            throw new RuntimeException("Project not found");
        }
        Project project = projectOpt.get();
        List<String> suggestions = new ArrayList<>();
        for (var dep : project.getDependencies()) {
            // Mock suggestion: if version is old, suggest update
            if (dep.getVersion().startsWith("1.")) {
                suggestions.add("Update " + dep.getName() + " from " + dep.getVersion() + " to 2.0.0");
            }
            // Check for vulnerabilities and suggest alternatives
            List<Vulnerability> vulns = vulnerabilityRepository.findByDependencyName(dep.getName());
            if (!vulns.isEmpty()) {
                suggestions.add("Consider alternative for " + dep.getName() + " due to vulnerabilities");
            }
        }
        return suggestions;
    }

    private boolean isVersionAffected(String currentVersion, String affectedVersion) {
        // Simple mock: if affectedVersion contains currentVersion
        return affectedVersion.contains(currentVersion);
    }
}
