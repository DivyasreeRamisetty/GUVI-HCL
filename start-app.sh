#!/bin/bash
# Quick Start Script for Software Dependency Auditor
# This script helps beginners verify their setup and start the application

echo "🚀 Software Dependency Auditor - Quick Start"
echo "=============================================="
echo

# Check Java
echo "1. Checking Java installation..."
if command -v java &> /dev/null; then
    java --version
    echo "✅ Java is installed"
else
    echo "❌ Java not found. Please install Java 21+ from https://adoptium.net/"
    exit 1
fi
echo

# Check Maven
echo "2. Checking Maven installation..."
if command -v mvn &> /dev/null; then
    mvn --version | head -1
    echo "✅ Maven is installed"
else
    echo "❌ Maven not found. Please install Maven from https://maven.apache.org/"
    exit 1
fi
echo

# Check MongoDB
echo "3. Checking MongoDB connection..."
if command -v mongosh &> /dev/null; then
    if mongosh --eval "db.runCommand('ping')" --quiet > /dev/null 2>&1; then
        echo "✅ MongoDB is running and accessible"
    else
        echo "❌ MongoDB is not running. Please start MongoDB:"
        echo "   - Windows: net start MongoDB  OR  mongod --dbpath C:\\data\\db"
        echo "   - macOS: brew services start mongodb/brew/mongodb-community"
        echo "   - Linux: sudo systemctl start mongod"
        exit 1
    fi
else
    echo "⚠️  mongosh not found, but that's okay for basic testing"
fi
echo

echo "4. Building the application..."
mvn clean compile
if [ $? -ne 0 ]; then
    echo "❌ Build failed. Please check the error messages above."
    exit 1
fi
echo "✅ Build successful"
echo

echo "5. Starting the application..."
echo "📝 Note: This will start the server. Press Ctrl+C to stop it later."
echo "🌐 Once started, visit: http://localhost:8080/swagger-ui.html"
echo
echo "Press Enter to start the application..."
read

mvn spring-boot:run
