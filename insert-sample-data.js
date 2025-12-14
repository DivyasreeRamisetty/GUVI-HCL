// MongoDB script to insert comprehensive sample data for Dependency Auditor
// Run this script using: mongosh dependencyauditor --file insert-sample-data.js
// This script creates 20+ realistic projects with 80+ dependencies

// Connect to the dependencyauditor database
use('dependencyauditor');

// Clear existing data (optional - remove if you want to keep existing data)
db.projects.deleteMany({});
db.vulnerabilities.deleteMany({});

print("🚀 Starting comprehensive data insertion...");
print("Inserting 20+ realistic projects with various dependency scenarios...");

// Insert Projects with Dependencies
const projects = [
  {
    name: "E-commerce Web Application",
    description: "Online shopping platform with Spring Boot backend",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.1.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-data-jpa",
        version: "3.1.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-jpa"
      },
      {
        name: "mysql-connector-java",
        version: "8.0.32",
        groupId: "mysql",
        artifactId: "mysql-connector-java"
      },
      {
        name: "spring-boot-starter-security",
        version: "3.1.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-security"
      }
    ]
  },
  {
    name: "Microservice API Gateway",
    description: "Spring Cloud Gateway for microservices architecture",
    dependencies: [
      {
        name: "spring-cloud-starter-gateway",
        version: "4.0.0",
        groupId: "org.springframework.cloud",
        artifactId: "spring-cloud-starter-gateway"
      },
      {
        name: "spring-cloud-starter-netflix-eureka-client",
        version: "4.0.0",
        groupId: "org.springframework.cloud",
        artifactId: "spring-cloud-starter-netflix-eureka-client"
      },
      {
        name: "spring-boot-starter-actuator",
        version: "3.1.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-actuator"
      }
    ]
  },
  {
    name: "Data Analytics Service",
    description: "Big data processing service with Apache Kafka integration",
    dependencies: [
      {
        name: "spring-kafka",
        version: "3.0.5",
        groupId: "org.springframework.kafka",
        artifactId: "spring-kafka"
      },
      {
        name: "spring-boot-starter-data-mongodb",
        version: "3.1.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-mongodb"
      },
      {
        name: "jackson-databind",
        version: "2.14.2",
        groupId: "com.fasterxml.jackson.core",
        artifactId: "jackson-databind"
      },
      {
        name: "apache-commons-lang3",
        version: "3.12.0",
        groupId: "org.apache.commons",
        artifactId: "commons-lang3"
      }
    ]
  },
  {
    name: "Mobile Backend Service",
    description: "REST API backend for mobile applications with JWT authentication",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.0.5",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "jjwt",
        version: "0.9.1",
        groupId: "io.jsonwebtoken",
        artifactId: "jjwt"
      },
      {
        name: "spring-boot-starter-validation",
        version: "3.0.5",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-validation"
      },
      {
        name: "postgresql",
        version: "42.5.4",
        groupId: "org.postgresql",
        artifactId: "postgresql"
      }
    ]
  },
  {
    name: "Legacy System Integration",
    description: "Integration service for legacy systems with outdated dependencies",
    dependencies: [
      {
        name: "log4j-core",
        version: "2.14.1",
        groupId: "org.apache.logging.log4j",
        artifactId: "log4j-core"
      },
      {
        name: "httpclient",
        version: "4.5.13",
        groupId: "org.apache.httpcomponents",
        artifactId: "httpclient"
      },
      {
        name: "gson",
        version: "2.8.9",
        groupId: "com.google.code.gson",
        artifactId: "gson"
      },
      {
        name: "commons-collections",
        version: "3.2.2",
        groupId: "commons-collections",
        artifactId: "commons-collections"
      }
    ]
  },
  {
    name: "DevOps Monitoring Dashboard",
    description: "Real-time monitoring dashboard for infrastructure and applications",
    dependencies: [
      {
        name: "micrometer-core",
        version: "1.10.5",
        groupId: "io.micrometer",
        artifactId: "micrometer-core"
      },
      {
        name: "spring-boot-starter-actuator",
        version: "3.1.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-actuator"
      },
      {
        name: "prometheus-metrics-core",
        version: "1.0.0",
        groupId: "io.prometheus",
        artifactId: "prometheus-metrics-core"
      },
      {
        name: "influxdb-java",
        version: "2.21",
        groupId: "org.influxdb",
        artifactId: "influxdb-java"
      }
    ]
  },
  {
    name: "Financial Services Application",
    description: "Banking platform with high security requirements and compliance",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.2.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-security",
        version: "3.2.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-security"
      },
      {
        name: "spring-boot-starter-data-redis",
        version: "3.2.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-redis"
      },
      {
        name: "hibernate-validator",
        version: "8.0.0",
        groupId: "org.hibernate.validator",
        artifactId: "hibernate-validator"
      },
      {
        name: "oauth2-oidc-sdk",
        version: "10.7",
        groupId: "com.nimbusds",
        artifactId: "oauth2-oidc-sdk"
      }
    ]
  },
  {
    name: "IoT Data Collection Service",
    description: "Internet of Things data collection and processing with MQTT",
    dependencies: [
      {
        name: "spring-boot-starter-integration",
        version: "3.1.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-integration"
      },
      {
        name: "spring-integration-mqtt",
        version: "6.1.0",
        groupId: "org.springframework.integration",
        artifactId: "spring-integration-mqtt"
      },
      {
        name: "spring-boot-starter-data-elasticsearch",
        version: "3.1.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-elasticsearch"
      },
      {
        name: "netty-all",
        version: "4.1.90",
        groupId: "io.netty",
        artifactId: "netty-all"
      }
    ]
  },
  {
    name: "Content Management System",
    description: "Web-based CMS with file upload and media processing capabilities",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.0.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-thymeleaf",
        version: "3.0.0",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-thymeleaf"
      },
      {
        name: "commons-fileupload",
        version: "1.4",
        groupId: "commons-fileupload",
        artifactId: "commons-fileupload"
      },
      {
        name: "imageio-core",
        version: "3.8.3",
        groupId: "com.github.jai-imageio",
        artifactId: "jai-imageio-core"
      }
    ]
  },
  {
    name: "Machine Learning Pipeline",
    description: "ML model training and inference pipeline with Python integration",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.1.5",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "tensorflow-java",
        version: "0.5.0",
        groupId: "org.tensorflow",
        artifactId: "tensorflow-core-platform"
      },
      {
        name: "jackson-databind",
        version: "2.13.0",
        groupId: "com.fasterxml.jackson.core",
        artifactId: "jackson-databind"
      },
      {
        name: "apache-commons-math3",
        version: "3.6.1",
        groupId: "org.apache.commons",
        artifactId: "commons-math3"
      }
    ]
  },
  {
    name: "Social Media Platform Backend",
    description: "Scalable backend for social networking with real-time features",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.1.2",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-websocket",
        version: "3.1.2",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-websocket"
      },
      {
        name: "spring-boot-starter-data-redis",
        version: "3.1.2",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-redis"
      },
      {
        name: "spring-boot-starter-cache",
        version: "3.1.2",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-cache"
      },
      {
        name: "caffeine",
        version: "3.1.5",
        groupId: "com.github.ben-manes.caffeine",
        artifactId: "caffeine"
      }
    ]
  },
  {
    name: "Video Streaming Service",
    description: "Video on demand platform with adaptive streaming",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.0.4",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-cloud-aws",
        version: "2.4.4",
        groupId: "io.awspring.cloud",
        artifactId: "spring-cloud-aws-starter"
      },
      {
        name: "ffmpeg-java",
        version: "5.1.2",
        groupId: "net.bramp.ffmpeg",
        artifactId: "ffmpeg"
      },
      {
        name: "spring-boot-starter-data-cassandra",
        version: "3.0.4",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-cassandra"
      }
    ]
  },
  {
    name: "Healthcare Management System",
    description: "HIPAA compliant patient data management system",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.1.8",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-security",
        version: "3.1.8",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-security"
      },
      {
        name: "spring-boot-starter-data-jpa",
        version: "3.1.8",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-jpa"
      },
      {
        name: "postgresql",
        version: "42.6.0",
        groupId: "org.postgresql",
        artifactId: "postgresql"
      },
      {
        name: "bouncycastle",
        version: "1.70",
        groupId: "org.bouncycastle",
        artifactId: "bcprov-jdk15on"
      }
    ]
  },
  {
    name: "E-learning Platform",
    description: "Online education platform with video lectures and quizzes",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.0.6",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-data-mongodb",
        version: "3.0.6",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-mongodb"
      },
      {
        name: "spring-boot-starter-mail",
        version: "3.0.6",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-mail"
      },
      {
        name: "apache-poi",
        version: "5.2.3",
        groupId: "org.apache.poi",
        artifactId: "poi-ooxml"
      }
    ]
  },
  {
    name: "Inventory Management System",
    description: "Warehouse and stock tracking system with barcode scanning",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.1.1",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-data-jpa",
        version: "3.1.1",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-jpa"
      },
      {
        name: "h2database",
        version: "2.1.214",
        groupId: "com.h2database",
        artifactId: "h2"
      },
      {
        name: "zxing-core",
        version: "3.5.1",
        groupId: "com.google.zxing",
        artifactId: "core"
      },
      {
        name: "jasperreports",
        version: "6.20.5",
        groupId: "net.sf.jasperreports",
        artifactId: "jasperreports"
      }
    ]
  },
  {
    name: "Weather Forecast API",
    description: "Weather data aggregation and forecasting service",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.1.4",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-webflux",
        version: "3.1.4",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-webflux"
      },
      {
        name: "reactor-core",
        version: "3.5.6",
        groupId: "io.projectreactor",
        artifactId: "reactor-core"
      },
      {
        name: "retrofit",
        version: "2.9.0",
        groupId: "com.squareup.retrofit2",
        artifactId: "retrofit"
      }
    ]
  },
  {
    name: "Travel Booking System",
    description: "Hotel and flight reservation platform with payment integration",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.0.9",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-data-jpa",
        version: "3.0.9",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-jpa"
      },
      {
        name: "stripe-java",
        version: "22.18.0",
        groupId: "com.stripe",
        artifactId: "stripe-java"
      },
      {
        name: "mysql-connector-java",
        version: "8.0.33",
        groupId: "mysql",
        artifactId: "mysql-connector-java"
      },
      {
        name: "apache-pdfbox",
        version: "2.0.28",
        groupId: "org.apache.pdfbox",
        artifactId: "pdfbox"
      }
    ]
  },
  {
    name: "Cryptocurrency Trading Bot",
    description: "Automated crypto trading system with market analysis",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.1.3",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-websocket",
        version: "3.1.3",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-websocket"
      },
      {
        name: "ta4j-core",
        version: "0.15",
        groupId: "org.ta4j",
        artifactId: "ta4j-core"
      },
      {
        name: "okhttp",
        version: "4.11.0",
        groupId: "com.squareup.okhttp3",
        artifactId: "okhttp"
      }
    ]
  },
  {
    name: "Real Estate Listing Platform",
    description: "Property listing and management system with map integration",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.0.7",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-data-mongodb",
        version: "3.0.7",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-mongodb"
      },
      {
        name: "google-maps-services",
        version: "2.2.0",
        groupId: "com.google.maps",
        artifactId: "google-maps-services"
      },
      {
        name: "cloudinary-http44",
        version: "1.34.0",
        groupId: "com.cloudinary",
        artifactId: "cloudinary-http44"
      }
    ]
  },
  {
    name: "Food Delivery Service",
    description: "Restaurant ordering and delivery tracking system",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.1.6",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-data-jpa",
        version: "3.1.6",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-jpa"
      },
      {
        name: "firebase-admin",
        version: "9.2.0",
        groupId: "com.google.firebase",
        artifactId: "firebase-admin"
      },
      {
        name: "postgresql",
        version: "42.5.1",
        groupId: "org.postgresql",
        artifactId: "postgresql"
      },
      {
        name: "twilio",
        version: "9.2.3",
        groupId: "com.twilio.sdk",
        artifactId: "twilio"
      }
    ]
  },
  {
    name: "Customer Support Ticketing System",
    description: "Help desk and customer support management platform",
    dependencies: [
      {
        name: "spring-boot-starter-web",
        version: "3.0.11",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-web"
      },
      {
        name: "spring-boot-starter-mail",
        version: "3.0.11",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-mail"
      },
      {
        name: "spring-boot-starter-data-jpa",
        version: "3.0.11",
        groupId: "org.springframework.boot",
        artifactId: "spring-boot-starter-data-jpa"
      },
      {
        name: "h2database",
        version: "2.2.220",
        groupId: "com.h2database",
        artifactId: "h2"
      }
    ]
  }
];

// Insert projects
const projectResult = db.projects.insertMany(projects);
print(`Inserted ${projectResult.insertedIds.length} projects`);

// Insert Vulnerabilities data
print("Inserting vulnerability data...");

const vulnerabilities = [
  {
    dependencyName: "log4j-core",
    affectedVersion: "2.14.1",
    description: "Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints. CVE-2021-44228",
    severity: "CRITICAL"
  },
  {
    dependencyName: "jackson-databind",
    affectedVersion: "2.12.0",
    description: "FasterXML jackson-databind through 2.12.1 allows attackers to cause a denial of service via a large depth of nested objects. CVE-2020-36518",
    severity: "HIGH"
  },
  {
    dependencyName: "commons-collections",
    affectedVersion: "3.2.2",
    description: "Apache Commons Collections InvokerTransformer code execution vulnerability. CVE-2015-6420",
    severity: "HIGH"
  },
  {
    dependencyName: "httpclient",
    affectedVersion: "4.5.13",
    description: "Apache HttpClient versions prior to 4.5.14 are vulnerable to response header injection attacks. CVE-2022-45868",
    severity: "MEDIUM"
  },
  {
    dependencyName: "jjwt",
    affectedVersion: "0.9.1",
    description: "JJWT versions before 0.10.0 allow signature bypass via algorithm confusion attack. CVE-2019-7644",
    severity: "HIGH"
  },
  {
    dependencyName: "gson",
    affectedVersion: "2.8.9",
    description: "Google Gson versions before 2.8.9 are vulnerable to deserialization attacks. CVE-2022-25647",
    severity: "MEDIUM"
  },
  {
    dependencyName: "mysql-connector-java",
    affectedVersion: "8.0.32",
    description: "MySQL Connector/J allows attackers to access sensitive information via deserialization. CVE-2023-21971",
    severity: "LOW"
  },
  {
    dependencyName: "spring-boot-starter-web",
    affectedVersion: "3.0.5",
    description: "Spring Boot versions before 3.0.6 have a potential security issue in web starter. CVE-2023-20861",
    severity: "LOW"
  }
];

// Insert vulnerabilities
const vulnResult = db.vulnerabilities.insertMany(vulnerabilities);
print(`Inserted ${vulnResult.insertedIds.length} vulnerabilities`);

// Additional vulnerabilities for new dependencies
const moreVulnerabilities = [
  {
    dependencyName: "commons-fileupload",
    affectedVersion: "1.4",
    description: "Apache Commons FileUpload before 1.5 allows attackers to cause DoS via file upload. CVE-2023-24998",
    severity: "CRITICAL"
  },
  {
    dependencyName: "netty-all",
    affectedVersion: "4.1.90",
    description: "Netty versions before 4.1.94 are vulnerable to HTTP request smuggling. CVE-2023-34462",
    severity: "HIGH"
  },
  {
    dependencyName: "postgresql",
    affectedVersion: "42.5.1",
    description: "PostgreSQL JDBC Driver has SQL injection vulnerability in prepared statements. CVE-2022-41946",
    severity: "HIGH"
  },
  {
    dependencyName: "h2database",
    affectedVersion: "2.1.214",
    description: "H2 Database allows remote code execution via JNDI. CVE-2022-23221",
    severity: "CRITICAL"
  },
  {
    dependencyName: "okhttp",
    affectedVersion: "4.11.0",
    description: "OkHttp has certificate pinning bypass vulnerability. CVE-2023-0833",
    severity: "MEDIUM"
  },
  {
    dependencyName: "retrofit",
    affectedVersion: "2.9.0",
    description: "Retrofit vulnerable to Server-Side Request Forgery attacks. CVE-2023-1234",
    severity: "MEDIUM"
  },
  {
    dependencyName: "bouncycastle",
    affectedVersion: "1.70",
    description: "Bouncy Castle cryptographic API has weak key generation. CVE-2023-33201",
    severity: "MEDIUM"
  },
  {
    dependencyName: "apache-poi",
    affectedVersion: "5.2.3",
    description: "Apache POI vulnerable to XML External Entity injection. CVE-2022-26336",
    severity: "HIGH"
  },
  {
    dependencyName: "apache-pdfbox",
    affectedVersion: "2.0.28",
    description: "Apache PDFBox allows infinite loops in object streams. CVE-2023-34396",
    severity: "MEDIUM"
  },
  {
    dependencyName: "firebase-admin",
    affectedVersion: "9.2.0",
    description: "Firebase Admin SDK has potential token verification bypass. CVE-2023-5678",
    severity: "HIGH"
  },
  {
    dependencyName: "stripe-java",
    affectedVersion: "22.18.0",
    description: "Stripe Java library may expose sensitive information in logs. CVE-2023-9012",
    severity: "LOW"
  },
  {
    dependencyName: "twilio",
    affectedVersion: "9.2.3",
    description: "Twilio SDK vulnerable to authentication bypass in certain configurations. CVE-2023-7890",
    severity: "MEDIUM"
  },
  {
    dependencyName: "zxing-core",
    affectedVersion: "3.5.1",
    description: "ZXing barcode library has buffer overflow in QR code parsing. CVE-2023-4321",
    severity: "MEDIUM"
  },
  {
    dependencyName: "jasperreports",
    affectedVersion: "6.20.5",
    description: "JasperReports allows arbitrary code execution via template injection. CVE-2023-6543",
    severity: "CRITICAL"
  },
  {
    dependencyName: "caffeine",
    affectedVersion: "3.1.5",
    description: "Caffeine cache library has potential memory leak under high load. CVE-2023-8765",
    severity: "LOW"
  }
];

const moreVulnResult = db.vulnerabilities.insertMany(moreVulnerabilities);
print(`Inserted ${moreVulnResult.insertedIds.length} additional vulnerabilities`);

// Display summary
print("\n=== 📊 Data Insertion Summary ===");
print(`✅ Projects inserted: ${projectResult.insertedIds.length}`);
print(`✅ Total vulnerabilities inserted: ${vulnResult.insertedIds.length + moreVulnResult.insertedIds.length}`);

// Calculate statistics
const totalDependencies = db.projects.aggregate([
  { $unwind: "$dependencies" },
  { $count: "total" }
]).toArray();

print(`✅ Total dependencies tracked: ${totalDependencies[0] ? totalDependencies[0].total : 0}`);

print("\n=== 🎯 Project Categories ===");
print("• E-commerce & Retail: 2 projects");
print("• Financial Services: 2 projects");
print("• Healthcare & Education: 2 projects");
print("• Media & Entertainment: 2 projects");
print("• IoT & Real-time Systems: 3 projects");
print("• Microservices & Cloud: 2 projects");
print("• Legacy & Integration: 2 projects");
print("• API Services: 3 projects");
print("• Customer Facing: 2 projects");

print("• Customer Facing: 2 projects");

print("\n=== 🔒 Vulnerability Severity Distribution ===");
const criticalCount = db.vulnerabilities.countDocuments({ severity: "CRITICAL" });
const highCount = db.vulnerabilities.countDocuments({ severity: "HIGH" });
const mediumCount = db.vulnerabilities.countDocuments({ severity: "MEDIUM" });
const lowCount = db.vulnerabilities.countDocuments({ severity: "LOW" });

print(`🔴 CRITICAL: ${criticalCount}`);
print(`🟠 HIGH: ${highCount}`);
print(`🟡 MEDIUM: ${mediumCount}`);
print(`🟢 LOW: ${lowCount}`);

print("\n=== 📚 Sample Queries ===");
print("To view all projects:");
print("  db.projects.find().pretty()");
print("\nTo view all vulnerabilities:");
print("  db.vulnerabilities.find().pretty()");
print("\nTo count documents:");
print("  db.projects.countDocuments()");
print("  db.vulnerabilities.countDocuments()");
print("\nTo find projects with specific dependency:");
print("  db.projects.find({ 'dependencies.name': 'spring-boot-starter-web' })");
print("\nTo find CRITICAL vulnerabilities:");
print("  db.vulnerabilities.find({ severity: 'CRITICAL' })");

print("\n✅ Comprehensive data insertion completed successfully!");
print("🎉 Database now contains 20+ realistic projects for testing!");

