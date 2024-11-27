export ENABLE_EXTENSION=true;
export EXTENSION_MODE=capture;
export GO_SERVER_BASE_URL=http://localhost:21082;
export MQ_HOST=localhost;
export MQ_PORT=5672;
export MQ_QUEUE=learning_engine_test_queue;
export MQ_USER=user;
export POSTGRES_DB=petclinic;
export POSTGRES_PASSWORD=petclinic;
export POSTGRES_USER=petclinic;
export PUBLISHER_MODE=RabbitMQ;
export MQ_PASSWORD=password

#./mvnw spring-boot:run -Dspring-boot.run.jvmArguments="-javaagent:/Users/saharshbasal/Development/git/testing/spring-petclinic/src/main/resources/opentelemetry-javaagent.jar -Dotel.resource.attributes=service.name=pet-clinic-service -Dotel.javaagent.extensions=/Users/saharshbasal/Development/git/testing/spring-petclinic/src/main/resources/sapient-otel-extension-1.0-all.jar -Dotel.traces.exporter=zipkin -Dio.opentelemetry.javaagent.slf4j.simpleLogger.defaultLogLevel=off"  -Dspring-boot.run.profiles=postgres
java -javaagent:/Users/saharshbasal/Development/git/testing/spring-petclinic/src/main/resources/opentelemetry-javaagent.jar \
 -Dotel.resource.attributes=service.name=pet-clinic-service \
 -Dotel.javaagent.extensions=/Users/saharshbasal/Development/git/testing/spring-petclinic/src/main/resources/sapient-otel-extension-1.0-all.jar \
 -Dotel.traces.exporter=zipkin \
 -Dio.opentelemetry.javaagent.slf4j.simpleLogger.defaultLogLevel=off \
 -Dspring.profiles.active=postgres \
 -Dlogging.level.org.springframework.boot.context.config=DEBUG \
 -jar /Users/saharshbasal/Development/git/testing/spring-petclinic/build/libs/spring-petclinic-3.3.0.jar

