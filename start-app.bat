@echo off
REM Quick Start Script for Software Dependency Auditor (Windows)
REM This script helps beginners verify their setup and start the application

echo 🚀 Software Dependency Auditor - Quick Start
echo ==============================================
echo.

REM Check Java
echo 1. Checking Java installation...
java --version >nul 2>&1
if %errorlevel% equ 0 (
    java --version
    echo ✅ Java is installed
) else (
    echo ❌ Java not found. Please install Java 21+ from https://adoptium.net/
    pause
    exit /b 1
)
echo.

REM Check Maven
echo 2. Checking Maven installation...
mvn --version >nul 2>&1
if %errorlevel% equ 0 (
    mvn --version | findstr "Apache Maven"
    echo ✅ Maven is installed
) else (
    echo ❌ Maven not found. Please install Maven from https://maven.apache.org/
    pause
    exit /b 1
)
echo.

REM Check MongoDB
echo 3. Checking MongoDB connection...
mongosh --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️  MongoDB Shell (mongosh) not found, checking if MongoDB service is running...
    sc query MongoDB | find "RUNNING" >nul 2>&1
    if %errorlevel% equ 0 (
        echo ✅ MongoDB service is running
    ) else (
        echo ❌ MongoDB is not running. Please start MongoDB:
        echo    Option 1: net start MongoDB
        echo    Option 2: mongod --dbpath C:\data\db
        echo.
        set /p dummy="Press Enter after starting MongoDB..."
    )
) else (
    mongosh --eval "db.runCommand('ping')" --quiet >nul 2>&1
    if %errorlevel% equ 0 (
        echo ✅ MongoDB is running and accessible
    ) else (
        echo ❌ MongoDB is not running. Please start MongoDB:
        echo    Option 1: net start MongoDB
        echo    Option 2: mongod --dbpath C:\data\db
        echo.
        set /p dummy="Press Enter after starting MongoDB..."
    )
)
echo.

echo 4. Building the application...
mvn clean compile
if %errorlevel% neq 0 (
    echo ❌ Build failed. Please check the error messages above.
    pause
    exit /b 1
)
echo ✅ Build successful
echo.

echo 5. Starting the application...
echo 📝 Note: This will start the server in the background.
echo 🌐 Once started, you can visit: http://localhost:8080/swagger-ui.html
echo.

REM Start Spring Boot application in background
echo Starting Spring Boot application...
start /b mvn spring-boot:run > app.log 2>&1

REM Wait for application to start
echo Waiting for application to start...
timeout /t 15 /nobreak > nul

REM Check if application is running
echo Checking if application started successfully...
curl -s http://localhost:8080/api/projects > nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Application started successfully!
    echo.
    
    REM Ask user if they want to populate with sample data
    echo 6. Would you like to add sample data to the database?
    echo    This will create 10+ realistic projects with dependencies for testing.
    echo    Sample data includes: E-commerce apps, microservices, legacy systems, etc.
    echo.
    choice /c YN /m "Add sample data (Y/N)"
    if %errorlevel% equ 1 (
        echo.
        echo 📝 Adding comprehensive sample data...
        echo    - E-commerce Web Application
        echo    - Microservice API Gateway  
        echo    - Data Analytics Service
        echo    - Mobile Backend Service
        echo    - Legacy System Integration (with vulnerable dependencies)
        echo    - And 5+ more realistic projects...
        echo.
        echo Method 1: Using MongoDB shell script (faster)...
        
        REM Try MongoDB shell method first
        mongosh dependencyauditor --file insert-sample-data.js --quiet
        if %errorlevel% equ 0 (
            echo ✅ Sample data added successfully via MongoDB shell
            echo 📊 Projects: 10+, Dependencies: 40+, Vulnerabilities: 15+
            
            REM Quick verification via API
            echo 🔍 Verifying data insertion...
            curl -s http://localhost:8080/api/projects | find "E-commerce" > nul 2>&1
            if %errorlevel% equ 0 (
                echo ✅ Data verification successful - sample projects are accessible via API
            )
        ) else (
            echo ⚠️  MongoDB shell method failed, trying REST API method...
            echo    (This may take a few seconds...)
            
            REM Fallback to REST API method
            call populate-complete-data.bat > nul 2>&1
            if %errorlevel% equ 0 (
                echo ✅ Sample data added successfully via REST API
                echo 📊 Data populated with realistic project scenarios
            ) else (
                echo ❌ Failed to add sample data automatically
                echo 💡 Possible causes: Application not fully started, MongoDB connection issues
                echo 💡 You can add data manually via Swagger UI or try again later:
                echo    - Option 1: mongosh dependencyauditor --file insert-sample-data.js
                echo    - Option 2: populate-complete-data.bat
                echo    - Option 3: Use Swagger UI at http://localhost:8080/swagger-ui.html
            )
        )
        echo.
    ) else (
        echo 📝 Skipping sample data insertion
        echo 💡 You can add data later using:
        echo    - Swagger UI: http://localhost:8080/swagger-ui.html
        echo    - MongoDB script: mongosh dependencyauditor --file insert-sample-data.js
        echo    - REST API script: populate-complete-data.bat
        echo.
    )
    
    echo 🎉 Setup Complete!
    echo ================================
    echo ✅ Application is running at: http://localhost:8080
    echo ✅ Swagger UI available at: http://localhost:8080/swagger-ui.html
    echo ✅ API Documentation at: http://localhost:8080/api-docs
    echo.
    echo 🚀 Next Steps:
    echo 1. Open your browser and go to: http://localhost:8080/swagger-ui.html
    echo 2. Try the "GET /api/projects" endpoint to see your data
    echo 3. Test vulnerability scanning: "GET /api/projects/{id}/vulnerabilities"
    echo 4. Test dependency updates: "GET /api/projects/{id}/updates"
    echo 5. Create new projects using the "POST /api/projects" endpoint
    echo 6. Explore the comprehensive sample data with realistic scenarios
    echo.
    echo 🛑 To stop the application: Press Ctrl+C in this window
    echo.
    
    REM Open browser automatically
    choice /c YN /m "Open Swagger UI in browser now (Y/N)"
    if %errorlevel% equ 1 (
        start http://localhost:8080/swagger-ui.html
    )
    
    echo Press any key to view application logs, or close this window to keep running...
    pause > nul
    type app.log
    
) else (
    echo ❌ Application failed to start properly
    echo 📋 Please check the logs below for error details:
    echo.
    type app.log 2>nul
    echo.
    echo 💡 Common solutions:
    echo - Make sure MongoDB is running
    echo - Check if port 8080 is already in use
    echo - Verify Java and Maven are properly installed
    pause
)
