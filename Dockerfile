FROM hapiproject/hapi:latest

# HAPI uses Spring Boot under the hood and binds 0.0.0.0:8080 by default
EXPOSE 8080

# Keep memory small for Render’s Free/Starter plans. Tune Xmx if you upgrade.
ENV JAVA_OPTS="-Xms256m -Xmx512m -XX:+UseSerialGC"

# Make the port explicit for safety (Spring Boot reads SERVER_PORT)
ENV SERVER_PORT=8080