# GUVI-HCL-Software-Dependency-Auditor

A Spring Boot application for auditing software dependencies for vulnerabilities and suggesting updates.

## 🚀 Quick Start

### For Beginners
� **Read [SETUP-GUIDE.md](SETUP-GUIDE.md)** - Complete step-by-step guide with detailed instructions

### For Everyone Else

```bash
# 1. Install: Java 21, Maven 3.6+, MongoDB 4.4+
# 2. Clone this repository
# 3. Run the automated script:
start-app.bat
```

That's it! The script will:
- ✅ Check your prerequisites
- ✅ Build the application
- ✅ Start the server
- ✅ Offer to add sample data
- ✅ Open Swagger UI in your browser

**App runs at:** http://localhost:8080/swagger-ui.html

## 🎯 Features

- ✅ CRUD operations for software projects
- 🔒 Check vulnerabilities in project dependencies
- 🔄 Suggest dependency updates or alternatives
- 📚 Interactive API documentation with Swagger UI
- 🗄️ MongoDB data persistence
- 🌐 RESTful API with OpenAPI 3.0 specification
- 📖 Comprehensive project documentation (view `PROJECT-DOCUMENTATION.html` in browser)

## 🛠️ Technologies

- **Java** 21 (LTS)
- **Spring Boot** 3.2.0
- **MongoDB** 4.4+
- **Maven** 3.6+
- **Swagger/OpenAPI** 3.0 (SpringDoc)

## 📋 Prerequisites

**For detailed installation instructions with troubleshooting, see [SETUP-GUIDE.md](SETUP-GUIDE.md)**

Quick checklist - you need:

### 1. Java 21 or higher
- **Download:** https://adoptium.net/temurin/releases/
- **Verify:** `java --version`

### 2. Maven 3.6+
- **Download:** https://maven.apache.org/download.cgi
- **Verify:** `mvn --version`

### 3. MongoDB 4.4+
- **Download:** https://www.mongodb.com/try/download/community
- **Verify:** `mongosh` (should connect without errors)
- **Start service:** `net start MongoDB` (Windows)

### 4. Git (Optional)
- **Download:** https://git-scm.com/downloads
- Alternative: Download project as ZIP from GitHub

## 🚀 Quick Start

### 🎯 Option A: Automated Setup (Recommended - Easiest!)

This is the **easiest way** to get started! The script will check everything, build the app, and guide you through setup.

**Windows:**
```bash
# Navigate to project directory
cd GUVI-HCL-Software-Dependency-Auditor

# Run the automated script
start-app.bat
```

**The script will:**
- ✅ Check if Java, Maven, and MongoDB are installed
- ✅ Build the application automatically
- ✅ Start the application
- ✅ Offer to add sample data
- ✅ Open Swagger UI in your browser

**Just follow the prompts!** The script handles everything for you.

**macOS/Linux:**
```bash
chmod +x start-app.sh
./start-app.sh
```

---

### 📝 Option B: Manual Setup (For Advanced Users)

<details>
<summary>Click to expand manual setup instructions</summary>

### Step 1: Install and Start MongoDB

#### Windows:
```bash
# Option 1: Start as Windows Service (if installed as service)
net start MongoDB

# Option 2: Start manually
mongod --dbpath C:\data\db
```

#### macOS/Linux:
```bash
# Start MongoDB (if installed via package manager)
brew services start mongodb/brew/mongodb-community  # macOS with Homebrew
sudo systemctl start mongod                          # Linux with systemd

# Or start manually
mongod --dbpath /usr/local/var/mongodb
```

**⚠️ Important**: MongoDB must be running before starting the application!

### Step 2: Clone and Setup the Project

```bash
# Clone the repository
git clone https://github.com/DivyasreeRamisetty/GUVI-HCL-Software-Dependency-Auditor.git

# Navigate to project directory
cd GUVI-HCL-Software-Dependency-Auditor

# Build the project (this downloads dependencies)
mvn clean compile
```

### Step 3: Run the Application

```bash
mvn spring-boot:run
```

**Expected output**: You should see Spring Boot startup logs ending with:
```
Started DependencyAuditorApplication in X.XXX seconds
```

### Step 4: Verify the Application is Running

Open your browser and visit:
- **Swagger UI:** http://localhost:8080/swagger-ui.html ← **Start here!**
- **API Docs:** http://localhost:8080/api-docs
- **Health Check:** http://localhost:8080/actuator/health

</details>

---

## 📊 Adding Sample Data

The application starts with an empty database. Add realistic sample data to test all features!

### 🎯 Recommended: Automated Script (Easiest)

```bash
# Make sure the application is running, then run:
add-sample-data.bat
```

This adds **10+ realistic projects** including:
- E-commerce Web Application
- Microservice API Gateway
- Data Analytics Service
- Mobile Backend Service
- Legacy System (with vulnerable dependencies)
- And 5+ more scenarios!

### Other Methods:

<details>
<summary>Click to see alternative methods</summary>

**Method 1: MongoDB Shell (Fast)**
```bash
mongosh dependencyauditor --file insert-dummy-data.js
```

**Method 2: REST API Script (Windows)**
```bash
populate-complete-data.bat
```

**Method 3: Manual via Swagger UI**
1. Go to http://localhost:8080/swagger-ui.html
2. Find "POST /api/projects"
3. Click "Try it out"
4. Modify the JSON template
5. Click "Execute"

</details>

**Sample Data Includes:**
- 📦 21+ realistic project scenarios
- 🔧 80+ common dependencies with realistic versions
- 🔒 23+ sample vulnerabilities for security testing
- 💻 Mix of modern and legacy technology stacks

## 🔧 Troubleshooting

**For detailed troubleshooting, see [SETUP-GUIDE.md](SETUP-GUIDE.md)**

### Quick Fixes:

**MongoDB errors:**
```bash
# Start MongoDB
net start MongoDB

# Or manually
mongod --dbpath C:\data\db
```

**Java/Maven not found:**
- Restart your computer after installation
- Check environment variables (PATH, JAVA_HOME)

**Port 8080 in use:**
```bash
# Find and kill the process
netstat -ano | findstr :8080
taskkill /PID <PID> /F
```

**Application won't start:**
- Make sure MongoDB is running first
- Check Java version: `java --version` (must be 21+)
- Try clean build: `mvn clean install`

**Swagger UI shows errors:**
- Wait 30 seconds for full application startup
- Refresh browser (Ctrl + F5)
- Check console for errors

## 📚 API Endpoints Reference

| Method | Endpoint | Description | Try in Swagger |
|--------|----------|-------------|----------------|
| GET | `/api/projects` | Get all projects | ✅ Start here |
| POST | `/api/projects` | Create a new project | ✅ Add sample data |
| GET | `/api/projects/{id}` | Get project by ID | After creating projects |
| PUT | `/api/projects/{id}` | Update project | Modify existing project |
| DELETE | `/api/projects/{id}` | Delete project | Remove project |
| GET | `/api/projects/{id}/vulnerabilities` | Check vulnerabilities | Test security scan |
| GET | `/api/projects/{id}/updates` | Suggest dependency updates | Get update suggestions |

## 📝 Common Commands

**Start MongoDB:**
```bash
net start MongoDB
```

**Build Project:**
```bash
mvn clean compile
```

**Run Application:**
```bash
mvn spring-boot:run
```

**Add Sample Data:**
```bash
add-sample-data.bat
```

**Stop Application:**
```
Ctrl + C (in terminal)
```

## 🧪 Testing the Application

### 1. Interactive Testing (Easiest for Beginners)
Visit **http://localhost:8080/swagger-ui.html** for interactive API documentation and testing.

**Quick Test Steps**:
1. Go to Swagger UI
2. Click on "GET /api/projects" → "Try it out" → "Execute"
3. You should see an empty array `[]` (no projects yet)
4. Add sample data (see below)
5. Try the GET request again to see the data

### 2. Command Line Testing
```bash
# Test if application is running
curl http://localhost:8080/api/projects

# Create a sample project (Windows - escape quotes)
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{\"name\": \"Test Project\", \"description\": \"Testing the API\", \"dependencies\": []}"
```

## 🌐 Important URLs

Once the application is running:

| Resource | URL |
|----------|-----|
| **Swagger UI** | http://localhost:8080/swagger-ui.html |
| **All Projects API** | http://localhost:8080/api/projects |
| **Health Check** | http://localhost:8080/actuator/health |
| **API Docs (JSON)** | http://localhost:8080/api-docs |

## 🎓 Learning Path for Beginners

1. **First**: Ensure application runs and shows Swagger UI
2. **Second**: Add sample data using one of the methods above
3. **Third**: Try GET /api/projects to see the data
4. **Fourth**: Create your own project via Swagger UI
5. **Fifth**: Test vulnerability scanning on a project
6. **Finally**: Explore the source code in `src/` directory

## 🏗️ Project Structure (For Learning)

```
src/main/java/com/example/dependencyauditor/
├── DependencyAuditorApplication.java    # Main Spring Boot application
├── config/SwaggerConfig.java            # Swagger configuration
├── controller/ProjectController.java    # REST API endpoints
├── model/                              # Data models
│   ├── Project.java                    # Project entity
│   ├── Dependency.java                 # Dependency entity
│   └── Vulnerability.java              # Vulnerability entity
├── repository/                         # Database layer
│   ├── ProjectRepository.java
│   └── VulnerabilityRepository.java
└── service/DependencyAuditorService.java # Business logic
```

## 💡 Next Steps

After getting the application running:
- Explore the Swagger UI to understand the API
- Look at the source code to understand Spring Boot structure
- Try adding new features or endpoints
- Learn about MongoDB integration with Spring Data

## 📖 Documentation

- **[SETUP-GUIDE.md](SETUP-GUIDE.md)** - Complete step-by-step setup guide for beginners
- **[PROJECT-DOCUMENTATION.html](PROJECT-DOCUMENTATION.html)** - Technical documentation (open in browser)

## 💡 Next Steps

If you encounter issues:
1. Check the troubleshooting section above
2. Ensure all prerequisites are properly installed
3. Verify MongoDB is running
4. Check application logs in the terminal for error messages
