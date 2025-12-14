# 🚀 Complete Setup Guide - Software Dependency Auditor

This guide will help you set up and run the Software Dependency Auditor application, even if you have no prior experience with Java, MongoDB, or Spring Boot.

---

## 📋 Table of Contents

1. [Prerequisites Installation](#prerequisites-installation)
2. [Getting the Project](#getting-the-project)
3. [Running the Application](#running-the-application)
4. [Testing the Application](#testing-the-application)
5. [Common Issues & Solutions](#common-issues--solutions)
6. [Understanding the Application](#understanding-the-application)

---

## 📦 Prerequisites Installation

You need to install these tools before running the application. Follow the steps carefully.

### Step 1: Install Java 21

**What is Java?** Java is the programming language used to build this application.

#### Windows:
1. Visit: https://adoptium.net/temurin/releases/
2. Select:
   - **Version:** 21 (LTS)
   - **Operating System:** Windows
   - **Architecture:** x64
3. Download the `.msi` installer
4. Run the installer (keep all default options)
5. **Important:** During installation, check the box "Set JAVA_HOME variable"

#### Verify Installation:
```bash
# Open Command Prompt (cmd) and type:
java --version

# You should see something like:
# openjdk 21.0.x 2024-xx-xx
```

If you see an error, restart your computer and try again.

---

### Step 2: Install Maven

**What is Maven?** Maven is a build tool that manages dependencies and compiles the Java project.

#### Windows:
1. Visit: https://maven.apache.org/download.cgi
2. Download: `apache-maven-3.9.x-bin.zip` (latest version)
3. Extract the ZIP file to: `C:\Program Files\Apache\Maven`
4. Add Maven to PATH:
   - Press `Windows + R`, type `sysdm.cpl`, press Enter
   - Go to **Advanced** tab → **Environment Variables**
   - Under **System variables**, find **Path**, click **Edit**
   - Click **New**, add: `C:\Program Files\Apache\Maven\bin`
   - Click **OK** on all windows

#### Verify Installation:
```bash
# Open NEW Command Prompt and type:
mvn --version

# You should see:
# Apache Maven 3.9.x
```

---

### Step 3: Install MongoDB

**What is MongoDB?** MongoDB is the database that stores all project and dependency information.

#### Windows:
1. Visit: https://www.mongodb.com/try/download/community
2. Select:
   - **Version:** Latest (7.x or higher)
   - **Platform:** Windows x64
   - **Package:** MSI
3. Download and run the installer
4. During installation:
   - Choose **Complete** setup
   - **Check:** "Install MongoDB as a Service" (very important!)
   - **Check:** "Install MongoDB Compass" (optional but helpful for viewing data)
   - Leave other options as default
5. Click **Install**

#### Verify MongoDB is Running:
```bash
# Open Command Prompt and type:
mongosh

# You should see:
# Current Mongosh Log ID: ...
# Connecting to: mongodb://127.0.0.1:27017
# Using MongoDB: ...

# Type 'exit' to close mongosh
```

**If MongoDB is NOT running:**
```bash
# Start MongoDB service:
net start MongoDB
```

---

### Step 4: Install Git (Optional but Recommended)

**What is Git?** Git helps you download the project code from GitHub.

1. Visit: https://git-scm.com/downloads
2. Download the Windows installer
3. Run installer (keep all default options)

#### Verify Installation:
```bash
git --version
```

**Alternative:** You can also download the project as a ZIP file from GitHub without Git.

---

## 📥 Getting the Project

### Option A: Using Git (Recommended)

```bash
# Open Command Prompt
# Navigate to where you want to save the project
cd C:\Users\YourName\Documents

# Clone the repository
git clone https://github.com/DivyasreeRamisetty/GUVI-HCL-Software-Dependency-Auditor.git

# Go into the project folder
cd GUVI-HCL-Software-Dependency-Auditor
```

### Option B: Download ZIP

1. Go to: https://github.com/DivyasreeRamisetty/GUVI-HCL-Software-Dependency-Auditor
2. Click the green **Code** button
3. Click **Download ZIP**
4. Extract the ZIP file to your desired location
5. Open Command Prompt and navigate to that folder

---

## 🚀 Running the Application

### 🎯 Easiest Method: Automated Script

We've created a script that does everything for you!

#### Windows Users:
```bash
# Navigate to project folder in Command Prompt
cd C:\Users\YourName\Documents\GUVI-HCL-Software-Dependency-Auditor

# Run the automated setup script
start-app.bat
```

**What this script does:**
1. ✅ Checks if Java is installed
2. ✅ Checks if Maven is installed
3. ✅ Checks if MongoDB is running
4. ✅ Builds the application
5. ✅ Starts the application
6. ✅ Asks if you want to add sample data
7. ✅ Opens Swagger UI in your browser

**Just follow the prompts!** The script will guide you through everything.

---

### 📝 Manual Method (Advanced)

If the automated script doesn't work, try these steps:

#### Step 1: Start MongoDB
```bash
# Check if MongoDB is running
mongosh

# If not running, start it:
net start MongoDB
```

#### Step 2: Build the Project
```bash
# Navigate to project directory
cd C:\Users\YourName\Documents\GUVI-HCL-Software-Dependency-Auditor

# Build the project
mvn clean compile
```

This will download all dependencies (first time may take 5-10 minutes).

#### Step 3: Run the Application
```bash
mvn spring-boot:run
```

Wait until you see:
```
Started DependencyAuditorApplication in X.XXX seconds
```

#### Step 4: Open Swagger UI
Open your web browser and go to:
```
http://localhost:8080/swagger-ui.html
```

---

## 🧪 Testing the Application

### 1. Open Swagger UI

Visit: **http://localhost:8080/swagger-ui.html**

You should see an interactive API documentation page.

### 2. Test if Application is Working

1. In Swagger UI, find **"GET /api/projects"**
2. Click on it to expand
3. Click **"Try it out"**
4. Click **"Execute"**
5. You should see a response (empty array `[]` if no data yet)

✅ **Success!** Your application is running correctly.

### 3. Add Sample Data

#### Option A: Automated (Using Script)
```bash
# Run this in a NEW Command Prompt window (keep the application running)
add-sample-data.bat
```

#### Option B: Manual (Using Swagger UI)
1. In Swagger UI, find **"POST /api/projects"**
2. Click **"Try it out"**
3. You'll see a JSON template
4. Click **"Execute"**
5. The response should show the created project

#### Option C: Using MongoDB Script
```bash
# Run this in Command Prompt
mongosh dependencyauditor --file insert-dummy-data.js
```

This adds 10+ realistic projects with dependencies!

### 4. Explore the Data

Now try these API endpoints in Swagger UI:

**Get All Projects:**
- Endpoint: `GET /api/projects`
- See all projects in the database

**Get Single Project:**
- Endpoint: `GET /api/projects/{id}`
- Replace `{id}` with an actual project ID from the previous request

**Check Vulnerabilities:**
- Endpoint: `GET /api/projects/{id}/vulnerabilities`
- See security issues in project dependencies

**Check for Updates:**
- Endpoint: `GET /api/projects/{id}/updates`
- See available dependency updates

---

## 🐛 Common Issues & Solutions

### Issue 1: "Java not found"

**Solution:**
1. Make sure Java 21 is installed: `java --version`
2. Restart your computer after installation
3. Check JAVA_HOME environment variable is set

### Issue 2: "Maven not found"

**Solution:**
1. Make sure Maven is installed: `mvn --version`
2. Check that Maven's `bin` folder is in your PATH
3. Restart Command Prompt after adding to PATH

### Issue 3: "MongoDB connection refused"

**Solution:**
```bash
# Start MongoDB service
net start MongoDB

# Or manually start MongoDB
mongod --dbpath C:\data\db

# Check if MongoDB is running
mongosh
```

### Issue 4: "Port 8080 already in use"

**Solution:**
```bash
# Find what's using port 8080
netstat -ano | findstr :8080

# Kill that process (replace PID with actual number)
taskkill /PID <PID> /F

# Or change the port in application.properties:
# server.port=8081
```

### Issue 5: Application starts but Swagger UI shows errors

**Solution:**
1. Wait 30 seconds for full startup
2. Refresh the browser page (Ctrl + F5)
3. Check application logs for errors
4. Try restarting the application

### Issue 6: "Build failed" errors

**Solution:**
```bash
# Clean and rebuild
mvn clean install

# If still failing, check internet connection
# Maven needs to download dependencies

# Check logs for specific error messages
```

### Issue 7: Sample data not loading

**Solution:**
```bash
# Try MongoDB method directly:
mongosh dependencyauditor --file insert-dummy-data.js

# Or use REST API method:
populate-complete-data.bat

# Or add data manually via Swagger UI
```

---

## 📚 Understanding the Application

### What Does This Application Do?

The **Software Dependency Auditor** helps you:
- 📦 Track software project dependencies
- 🔒 Identify security vulnerabilities
- 🔄 Check for dependency updates
- 📊 Manage multiple projects in one place

### Architecture Overview

```
┌─────────────────────────────────────────┐
│         Web Browser / API Client        │
│    (Swagger UI or any HTTP client)     │
└───────────────┬─────────────────────────┘
                │ HTTP Requests
                ↓
┌─────────────────────────────────────────┐
│      Spring Boot Application            │
│  ┌───────────────────────────────────┐  │
│  │  REST Controllers (API Endpoints)  │  │
│  └──────────────┬────────────────────┘  │
│                 ↓                        │
│  ┌───────────────────────────────────┐  │
│  │  Service Layer (Business Logic)   │  │
│  └──────────────┬────────────────────┘  │
│                 ↓                        │
│  ┌───────────────────────────────────┐  │
│  │  Repository Layer (Data Access)   │  │
│  └──────────────┬────────────────────┘  │
└─────────────────┼───────────────────────┘
                  │
                  ↓
┌─────────────────────────────────────────┐
│         MongoDB Database                │
│  (Stores projects, dependencies, etc.)  │
└─────────────────────────────────────────┘
```

### Key Components

1. **Controllers** (`controller/`)
   - Handle HTTP requests
   - Define API endpoints
   - Return JSON responses

2. **Services** (`service/`)
   - Contain business logic
   - Scan vulnerabilities
   - Check for updates

3. **Models** (`model/`)
   - Define data structure
   - Project, Dependency, Vulnerability

4. **Repositories** (`repository/`)
   - Interface with MongoDB
   - CRUD operations

5. **Configuration** (`config/`)
   - Swagger/OpenAPI setup
   - Application settings

### API Endpoints Reference

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/projects` | List all projects |
| POST | `/api/projects` | Create new project |
| GET | `/api/projects/{id}` | Get project details |
| PUT | `/api/projects/{id}` | Update project |
| DELETE | `/api/projects/{id}` | Delete project |
| GET | `/api/projects/{id}/vulnerabilities` | Scan vulnerabilities |
| GET | `/api/projects/{id}/updates` | Check for updates |

---

## 🎓 Learning Path for Beginners

If you're new to this, follow these steps:

1. **Day 1: Setup & Exploration**
   - ✅ Install all prerequisites
   - ✅ Run the application successfully
   - ✅ Open Swagger UI and explore
   - ✅ Add sample data

2. **Day 2: API Testing**
   - ✅ Test GET endpoints
   - ✅ Create a new project via POST
   - ✅ Update a project via PUT
   - ✅ Test vulnerability scanning

3. **Day 3: Code Exploration**
   - ✅ Open project in IDE (IntelliJ IDEA / VS Code)
   - ✅ Explore the `src/` folder structure
   - ✅ Read through controller code
   - ✅ Understand model classes

4. **Day 4: Database Exploration**
   - ✅ Install MongoDB Compass
   - ✅ Connect to local MongoDB
   - ✅ View the `dependencyauditor` database
   - ✅ Explore collections and documents

5. **Day 5: Customization**
   - ✅ Try adding a new API endpoint
   - ✅ Modify sample data
   - ✅ Add new project via code

---

## 📁 Project Structure

```
GUVI-HCL-Software-Dependency-Auditor/
├── src/
│   ├── main/
│   │   ├── java/com/example/dependencyauditor/
│   │   │   ├── DependencyAuditorApplication.java  # Main entry point
│   │   │   ├── config/
│   │   │   │   └── SwaggerConfig.java             # API documentation config
│   │   │   ├── controller/
│   │   │   │   └── ProjectController.java         # REST API endpoints
│   │   │   ├── model/
│   │   │   │   ├── Project.java                   # Project entity
│   │   │   │   ├── Dependency.java                # Dependency entity
│   │   │   │   └── Vulnerability.java             # Vulnerability entity
│   │   │   ├── repository/
│   │   │   │   ├── ProjectRepository.java         # Project data access
│   │   │   │   └── VulnerabilityRepository.java   # Vulnerability data access
│   │   │   └── service/
│   │   │       └── DependencyAuditorService.java  # Business logic
│   │   └── resources/
│   │       └── application.properties             # App configuration
│   └── test/                                      # Test files
├── pom.xml                                        # Maven dependencies
├── README.md                                      # Quick reference
├── SETUP-GUIDE.md                                 # This file!
├── PROJECT-DOCUMENTATION.html                     # Complete documentation
├── start-app.bat                                  # Auto-start script (Windows)
├── add-sample-data.bat                            # Add sample data
├── populate-complete-data.bat                     # REST API data population
└── insert-dummy-data.js                           # MongoDB data script
```

---

## 🌐 Useful URLs (After Starting)

Once your application is running, bookmark these:

- **Swagger UI (Interactive API):** http://localhost:8080/swagger-ui.html
- **API Documentation (JSON):** http://localhost:8080/api-docs
- **Get All Projects:** http://localhost:8080/api/projects
- **Health Check:** http://localhost:8080/actuator/health

---

## 💡 Pro Tips

1. **Keep MongoDB Running:** MongoDB must be running before starting the application
2. **Use Swagger UI:** It's the easiest way to test APIs without writing code
3. **Check Logs:** If something fails, read the error messages in the console
4. **Sample Data:** Always add sample data to see how the system works
5. **Browser Developer Tools:** Press F12 in browser to see network requests
6. **Restart:** If things get weird, restart both MongoDB and the application

---

## 🆘 Still Having Issues?

If you're stuck:

1. **Check the error message** - Read it carefully, it often tells you what's wrong
2. **Google the error** - Copy/paste the error message into Google
3. **Check prerequisites** - Make sure Java, Maven, and MongoDB are properly installed
4. **Restart everything** - Sometimes a simple restart fixes things
5. **Check firewall** - Make sure Windows Firewall isn't blocking Java or MongoDB
6. **Try a different port** - Change `server.port` in `application.properties`

---

## 🎉 Success Checklist

You've successfully set up the application when:

- ✅ You can run `java --version` without errors
- ✅ You can run `mvn --version` without errors
- ✅ MongoDB is running (`mongosh` connects successfully)
- ✅ Application starts without errors
- ✅ Swagger UI loads at http://localhost:8080/swagger-ui.html
- ✅ You can execute API calls in Swagger UI
- ✅ Sample data loads successfully
- ✅ You can see projects in the response

---

## 📖 Next Steps

After successful setup:

1. Read **PROJECT-DOCUMENTATION.html** for detailed technical information
2. Explore the source code in the `src/` directory
3. Try creating custom projects with your own dependencies
4. Experiment with the vulnerability scanning feature
5. Learn about Spring Boot and MongoDB from official documentation

---

**Good luck! 🚀**

If you follow this guide step by step, you'll have the application running in 30-60 minutes.
