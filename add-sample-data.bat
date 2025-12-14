@echo off
REM Independent script to add sample data to Software Dependency Auditor
REM Run this after the application is already running

echo 📊 Software Dependency Auditor - Add Sample Data
echo ===============================================
echo.

REM Check if application is running
echo Checking if application is running...
curl -s http://localhost:8080/api/projects > nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Application is not running at http://localhost:8080
    echo 💡 Please start the application first:
    echo    - Run: start-app.bat
    echo    - Or: mvn spring-boot:run
    pause
    exit /b 1
)

echo ✅ Application is running
echo.

REM Check for existing data
echo Checking for existing data...
curl -s http://localhost:8080/api/projects | find "[]" > nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️  Database already contains projects
    choice /c YN /m "This will add more data to existing projects. Continue (Y/N)"
    if %errorlevel% equ 2 (
        echo Operation cancelled
        pause
        exit /b 0
    )
)

echo.
echo 📝 Adding comprehensive sample data...
echo    This creates realistic projects with dependencies and vulnerabilities:
echo    - E-commerce Web Application (Spring Boot + MySQL)
echo    - Microservice API Gateway (Spring Cloud)
echo    - Data Analytics Service (Kafka + MongoDB)
echo    - Mobile Backend Service (JWT + PostgreSQL)
echo    - Legacy System Integration (vulnerable dependencies)
echo    - Financial Services, Healthcare, E-learning platforms
echo    - IoT, Video Streaming, Social Media backends
echo    - And 10+ more diverse scenarios...
echo    📊 Total: 21 projects with 80+ dependencies
echo.

REM Check if mongosh is available
mongosh --version >nul 2>&1
if %errorlevel% equ 0 (
    REM Try MongoDB shell method first (faster and more reliable)
    echo Method 1: Using MongoDB shell script...
    mongosh dependencyauditor --file insert-sample-data.js --quiet >nul 2>&1
    if %errorlevel% equ 0 (
        echo ✅ Sample data added successfully via MongoDB shell
        
        REM Verify insertion
        echo 🔍 Verifying data insertion...
        timeout /t 2 /nobreak >nul
        curl -s http://localhost:8080/api/projects | find "E-commerce" >nul 2>&1
        if %errorlevel% equ 0 (
            echo ✅ Data verification successful
            echo 📊 Sample data includes: 21+ projects, 80+ dependencies, 23+ vulnerabilities
            goto :success
        ) else (
            echo ⚠️  Data inserted but API verification failed (may need to wait)
            goto :success
        )
    ) else (
        echo ⚠️  MongoDB shell method failed, trying REST API method...
        goto :rest_method
    )
) else (
    echo ℹ️  MongoDB shell (mongosh) not found, using REST API method...
    goto :rest_method
)

:rest_method
echo    (This may take 30-60 seconds...)
echo.

REM Fallback to REST API method
call populate-complete-data.bat >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Sample data added successfully via REST API
    echo 📊 Comprehensive project scenarios have been created
    goto :success
) else (
    echo ❌ Both methods failed
    echo.
    echo 💡 Troubleshooting:
    echo 1. Ensure MongoDB is running: net start MongoDB
    echo 2. Verify application is fully started and responsive
    echo 3. Check for port conflicts or firewall issues
    echo 4. Try manual insertion via Swagger UI: http://localhost:8080/swagger-ui.html
    echo.
    pause
    exit /b 1
)

:success

echo.
echo 🎉 Sample Data Added Successfully!
echo =================================
echo 📊 21 realistic projects with 80+ dependencies loaded!
echo 🔒 23+ vulnerabilities identified for testing
echo.
echo 🌐 View your data at: http://localhost:8080/swagger-ui.html
echo 📋 Try these API endpoints:
echo    - GET /api/projects (list all projects)
echo    - GET /api/projects/{id}/vulnerabilities (check vulnerabilities)
echo    - GET /api/projects/{id}/updates (check for updates)
echo.
echo 💡 Sample projects include diverse scenarios:
echo    - Modern Spring Boot applications
echo    - Microservice architectures
echo    - Financial services ^& healthcare
echo    - E-commerce ^& social media
echo    - IoT ^& data processing services
echo    - Mobile ^& web backends
echo    - Legacy systems with security issues
echo.
pause
