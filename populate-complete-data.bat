@echo off
REM Complete dummy data population script using REST API
REM This script doesn't require MongoDB shell tools
REM Creates 20+ realistic projects with comprehensive dependencies

echo ========================================================
echo Dependency Auditor - Comprehensive Data Population
echo Creating 20+ Realistic Projects via REST API
echo ========================================================
echo.

echo 📝 Populating database with diverse project scenarios...
echo.

echo 1. Creating E-commerce Web Application...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"E-commerce Web Application\", \"description\": \"Online shopping platform with Spring Boot backend and payment integration\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.1.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-data-jpa\", \"version\": \"3.1.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-jpa\" }, { \"name\": \"mysql-connector-java\", \"version\": \"8.0.32\", \"groupId\": \"mysql\", \"artifactId\": \"mysql-connector-java\" }, { \"name\": \"spring-boot-starter-security\", \"version\": \"3.1.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-security\" }] }"

echo.
echo 2. Creating Microservice API Gateway...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Microservice API Gateway\", \"description\": \"Spring Cloud Gateway for microservices architecture with load balancing\", \"dependencies\": [{ \"name\": \"spring-cloud-starter-gateway\", \"version\": \"4.0.0\", \"groupId\": \"org.springframework.cloud\", \"artifactId\": \"spring-cloud-starter-gateway\" }, { \"name\": \"spring-cloud-starter-netflix-eureka-client\", \"version\": \"4.0.0\", \"groupId\": \"org.springframework.cloud\", \"artifactId\": \"spring-cloud-starter-netflix-eureka-client\" }, { \"name\": \"spring-boot-starter-actuator\", \"version\": \"3.1.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-actuator\" }] }"

echo.
echo 3. Creating Data Analytics Service...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Data Analytics Service\", \"description\": \"Big data processing service with Apache Kafka and real-time analytics\", \"dependencies\": [{ \"name\": \"spring-kafka\", \"version\": \"3.0.5\", \"groupId\": \"org.springframework.kafka\", \"artifactId\": \"spring-kafka\" }, { \"name\": \"spring-boot-starter-data-mongodb\", \"version\": \"3.1.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-mongodb\" }, { \"name\": \"jackson-databind\", \"version\": \"2.14.2\", \"groupId\": \"com.fasterxml.jackson.core\", \"artifactId\": \"jackson-databind\" }, { \"name\": \"apache-commons-lang3\", \"version\": \"3.12.0\", \"groupId\": \"org.apache.commons\", \"artifactId\": \"commons-lang3\" }] }"

echo.
echo 4. Creating Mobile Backend Service...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Mobile Backend Service\", \"description\": \"REST API backend for mobile applications with JWT authentication and push notifications\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.0.5\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"jjwt\", \"version\": \"0.9.1\", \"groupId\": \"io.jsonwebtoken\", \"artifactId\": \"jjwt\" }, { \"name\": \"spring-boot-starter-validation\", \"version\": \"3.0.5\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-validation\" }, { \"name\": \"postgresql\", \"version\": \"42.5.4\", \"groupId\": \"org.postgresql\", \"artifactId\": \"postgresql\" }] }"

echo.
echo 5. Creating Legacy System Integration (with vulnerable dependencies)...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Legacy System Integration\", \"description\": \"Integration service for legacy systems with outdated and vulnerable dependencies\", \"dependencies\": [{ \"name\": \"log4j-core\", \"version\": \"2.14.1\", \"groupId\": \"org.apache.logging.log4j\", \"artifactId\": \"log4j-core\" }, { \"name\": \"httpclient\", \"version\": \"4.5.13\", \"groupId\": \"org.apache.httpcomponents\", \"artifactId\": \"httpclient\" }, { \"name\": \"gson\", \"version\": \"2.8.9\", \"groupId\": \"com.google.code.gson\", \"artifactId\": \"gson\" }, { \"name\": \"commons-collections\", \"version\": \"3.2.2\", \"groupId\": \"commons-collections\", \"artifactId\": \"commons-collections\" }] }"

echo.
echo 6. Creating DevOps Monitoring Dashboard...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"DevOps Monitoring Dashboard\", \"description\": \"Real-time monitoring dashboard for infrastructure and applications with Prometheus integration\", \"dependencies\": [{ \"name\": \"micrometer-core\", \"version\": \"1.10.5\", \"groupId\": \"io.micrometer\", \"artifactId\": \"micrometer-core\" }, { \"name\": \"spring-boot-starter-actuator\", \"version\": \"3.1.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-actuator\" }, { \"name\": \"prometheus-metrics-core\", \"version\": \"1.0.0\", \"groupId\": \"io.prometheus\", \"artifactId\": \"prometheus-metrics-core\" }, { \"name\": \"influxdb-java\", \"version\": \"2.21\", \"groupId\": \"org.influxdb\", \"artifactId\": \"influxdb-java\" }] }"

echo.
echo 7. Creating Financial Services Application...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Financial Services Application\", \"description\": \"Banking and financial services platform with high security requirements\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.2.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-security\", \"version\": \"3.2.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-security\" }, { \"name\": \"spring-boot-starter-data-redis\", \"version\": \"3.2.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-redis\" }, { \"name\": \"hibernate-validator\", \"version\": \"8.0.0\", \"groupId\": \"org.hibernate.validator\", \"artifactId\": \"hibernate-validator\" }] }"

echo.
echo 8. Creating IoT Data Collection Service...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"IoT Data Collection Service\", \"description\": \"Internet of Things data collection and processing service with MQTT support\", \"dependencies\": [{ \"name\": \"spring-boot-starter-integration\", \"version\": \"3.1.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-integration\" }, { \"name\": \"spring-integration-mqtt\", \"version\": \"6.1.0\", \"groupId\": \"org.springframework.integration\", \"artifactId\": \"spring-integration-mqtt\" }, { \"name\": \"spring-boot-starter-data-elasticsearch\", \"version\": \"3.1.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-elasticsearch\" }, { \"name\": \"netty-all\", \"version\": \"4.1.90\", \"groupId\": \"io.netty\", \"artifactId\": \"netty-all\" }] }"

echo.
echo 9. Creating Content Management System...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Content Management System\", \"description\": \"Web-based content management system with file upload and media processing\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.0.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-thymeleaf\", \"version\": \"3.0.0\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-thymeleaf\" }, { \"name\": \"commons-fileupload\", \"version\": \"1.4\", \"groupId\": \"commons-fileupload\", \"artifactId\": \"commons-fileupload\" }, { \"name\": \"imageio-core\", \"version\": \"3.8.3\", \"groupId\": \"com.github.jai-imageio\", \"artifactId\": \"jai-imageio-core\" }] }"

echo.
echo 10. Creating Machine Learning Pipeline...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Machine Learning Pipeline\", \"description\": \"ML model training and inference pipeline with Python integration\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.1.5\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"tensorflow-java\", \"version\": \"0.5.0\", \"groupId\": \"org.tensorflow\", \"artifactId\": \"tensorflow-core-platform\" }, { \"name\": \"jackson-databind\", \"version\": \"2.13.0\", \"groupId\": \"com.fasterxml.jackson.core\", \"artifactId\": \"jackson-databind\" }, { \"name\": \"apache-commons-math3\", \"version\": \"3.6.1\", \"groupId\": \"org.apache.commons\", \"artifactId\": \"commons-math3\" }] }"

echo.
echo 11. Creating Social Media Platform Backend...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Social Media Platform Backend\", \"description\": \"Scalable backend for social networking with real-time features\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.1.2\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-websocket\", \"version\": \"3.1.2\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-websocket\" }, { \"name\": \"spring-boot-starter-data-redis\", \"version\": \"3.1.2\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-redis\" }, { \"name\": \"spring-boot-starter-cache\", \"version\": \"3.1.2\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-cache\" }, { \"name\": \"caffeine\", \"version\": \"3.1.5\", \"groupId\": \"com.github.ben-manes.caffeine\", \"artifactId\": \"caffeine\" }] }"

echo.
echo 12. Creating Video Streaming Service...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Video Streaming Service\", \"description\": \"Video on demand platform with adaptive streaming\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.0.4\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-cloud-aws\", \"version\": \"2.4.4\", \"groupId\": \"io.awspring.cloud\", \"artifactId\": \"spring-cloud-aws-starter\" }, { \"name\": \"ffmpeg-java\", \"version\": \"5.1.2\", \"groupId\": \"net.bramp.ffmpeg\", \"artifactId\": \"ffmpeg\" }, { \"name\": \"spring-boot-starter-data-cassandra\", \"version\": \"3.0.4\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-cassandra\" }] }"

echo.
echo 13. Creating Healthcare Management System...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Healthcare Management System\", \"description\": \"HIPAA compliant patient data management system\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.1.8\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-security\", \"version\": \"3.1.8\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-security\" }, { \"name\": \"spring-boot-starter-data-jpa\", \"version\": \"3.1.8\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-jpa\" }, { \"name\": \"postgresql\", \"version\": \"42.6.0\", \"groupId\": \"org.postgresql\", \"artifactId\": \"postgresql\" }, { \"name\": \"bouncycastle\", \"version\": \"1.70\", \"groupId\": \"org.bouncycastle\", \"artifactId\": \"bcprov-jdk15on\" }] }"

echo.
echo 14. Creating E-learning Platform...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"E-learning Platform\", \"description\": \"Online education platform with video lectures and quizzes\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.0.6\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-data-mongodb\", \"version\": \"3.0.6\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-mongodb\" }, { \"name\": \"spring-boot-starter-mail\", \"version\": \"3.0.6\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-mail\" }, { \"name\": \"apache-poi\", \"version\": \"5.2.3\", \"groupId\": \"org.apache.poi\", \"artifactId\": \"poi-ooxml\" }] }"

echo.
echo 15. Creating Inventory Management System...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Inventory Management System\", \"description\": \"Warehouse and stock tracking system with barcode scanning\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.1.1\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-data-jpa\", \"version\": \"3.1.1\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-jpa\" }, { \"name\": \"h2database\", \"version\": \"2.1.214\", \"groupId\": \"com.h2database\", \"artifactId\": \"h2\" }, { \"name\": \"zxing-core\", \"version\": \"3.5.1\", \"groupId\": \"com.google.zxing\", \"artifactId\": \"core\" }, { \"name\": \"jasperreports\", \"version\": \"6.20.5\", \"groupId\": \"net.sf.jasperreports\", \"artifactId\": \"jasperreports\" }] }"

echo.
echo 16. Creating Weather Forecast API...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Weather Forecast API\", \"description\": \"Weather data aggregation and forecasting service\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.1.4\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-webflux\", \"version\": \"3.1.4\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-webflux\" }, { \"name\": \"reactor-core\", \"version\": \"3.5.6\", \"groupId\": \"io.projectreactor\", \"artifactId\": \"reactor-core\" }, { \"name\": \"retrofit\", \"version\": \"2.9.0\", \"groupId\": \"com.squareup.retrofit2\", \"artifactId\": \"retrofit\" }] }"

echo.
echo 17. Creating Travel Booking System...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Travel Booking System\", \"description\": \"Hotel and flight reservation platform with payment integration\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.0.9\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-data-jpa\", \"version\": \"3.0.9\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-jpa\" }, { \"name\": \"stripe-java\", \"version\": \"22.18.0\", \"groupId\": \"com.stripe\", \"artifactId\": \"stripe-java\" }, { \"name\": \"mysql-connector-java\", \"version\": \"8.0.33\", \"groupId\": \"mysql\", \"artifactId\": \"mysql-connector-java\" }, { \"name\": \"apache-pdfbox\", \"version\": \"2.0.28\", \"groupId\": \"org.apache.pdfbox\", \"artifactId\": \"pdfbox\" }] }"

echo.
echo 18. Creating Cryptocurrency Trading Bot...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Cryptocurrency Trading Bot\", \"description\": \"Automated crypto trading system with market analysis\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.1.3\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-websocket\", \"version\": \"3.1.3\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-websocket\" }, { \"name\": \"ta4j-core\", \"version\": \"0.15\", \"groupId\": \"org.ta4j\", \"artifactId\": \"ta4j-core\" }, { \"name\": \"okhttp\", \"version\": \"4.11.0\", \"groupId\": \"com.squareup.okhttp3\", \"artifactId\": \"okhttp\" }] }"

echo.
echo 19. Creating Real Estate Listing Platform...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Real Estate Listing Platform\", \"description\": \"Property listing and management system with map integration\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.0.7\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-data-mongodb\", \"version\": \"3.0.7\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-mongodb\" }, { \"name\": \"google-maps-services\", \"version\": \"2.2.0\", \"groupId\": \"com.google.maps\", \"artifactId\": \"google-maps-services\" }, { \"name\": \"cloudinary-http44\", \"version\": \"1.34.0\", \"groupId\": \"com.cloudinary\", \"artifactId\": \"cloudinary-http44\" }] }"

echo.
echo 20. Creating Food Delivery Service...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Food Delivery Service\", \"description\": \"Restaurant ordering and delivery tracking system\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.1.6\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-data-jpa\", \"version\": \"3.1.6\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-jpa\" }, { \"name\": \"firebase-admin\", \"version\": \"9.2.0\", \"groupId\": \"com.google.firebase\", \"artifactId\": \"firebase-admin\" }, { \"name\": \"postgresql\", \"version\": \"42.5.1\", \"groupId\": \"org.postgresql\", \"artifactId\": \"postgresql\" }, { \"name\": \"twilio\", \"version\": \"9.2.3\", \"groupId\": \"com.twilio.sdk\", \"artifactId\": \"twilio\" }] }"

echo.
echo 21. Creating Customer Support Ticketing System...
curl -X POST http://localhost:8080/api/projects -H "Content-Type: application/json" -d "{ \"name\": \"Customer Support Ticketing System\", \"description\": \"Help desk and customer support management platform\", \"dependencies\": [{ \"name\": \"spring-boot-starter-web\", \"version\": \"3.0.11\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-web\" }, { \"name\": \"spring-boot-starter-mail\", \"version\": \"3.0.11\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-mail\" }, { \"name\": \"spring-boot-starter-data-jpa\", \"version\": \"3.0.11\", \"groupId\": \"org.springframework.boot\", \"artifactId\": \"spring-boot-starter-data-jpa\" }, { \"name\": \"h2database\", \"version\": \"2.2.220\", \"groupId\": \"com.h2database\", \"artifactId\": \"h2\" }] }"

echo.
echo ============================================
echo 📊 Data Population Completed Successfully!
echo ============================================
echo.
echo ✅ Created 21 realistic projects with diverse dependency scenarios
echo ✅ Each project includes 3-5 dependencies
echo ✅ Total: 80+ dependency entries
echo.
echo 📈 Project Categories:
echo    • E-commerce ^& Retail
echo    • Financial Services
echo    • Healthcare ^& Education
echo    • Media ^& Entertainment
echo    • IoT ^& Real-time Systems
echo    • Microservices ^& Cloud
echo    • Legacy ^& Integration
echo    • API Services
echo.

echo Verifying data by fetching all projects...
curl -X GET http://localhost:8080/api/projects

echo.
echo.
echo 🎯 Summary:
echo ==========================================
echo ✅ 21 realistic projects created
echo ✅ Modern, legacy, and potentially vulnerable dependencies included
echo ✅ Ready for testing vulnerability scanning and dependency updates
echo.
echo 🧪 Next Steps:
echo 1. Test vulnerability scanning: curl -X GET http://localhost:8080/api/projects/{id}/vulnerabilities
echo 2. Test dependency updates: curl -X GET http://localhost:8080/api/projects/{id}/updates  
echo 3. View in Swagger UI: http://localhost:8080/swagger-ui.html
echo 4. Use MongoDB Compass to view database directly
echo.
pause
