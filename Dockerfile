FROM openjdk:jre-alpine

COPY target/cartservicejava-swarm.jar /opt/cartservicejava-swarm.jar

EXPOSE 8080
# preferIPv4Stack is needed to keep wildfly-swarm happy
ENTRYPOINT ["java", "-Djava.net.preferIPv4Stack=true", "-jar", "/opt/cartservicejava-swarm.jar"]