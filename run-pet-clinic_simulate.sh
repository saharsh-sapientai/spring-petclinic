./add-environment-variables.sh

export ENABLE_EXTENSION=true;
export EXTENSION_MODE=simulate;
export GO_SERVER_BASE_URL=https://app.baserock.ai/it/leService;


java -javaagent:/Users/saharshbasal/Development/git/testing/spring-petclinic/src/main/resources/opentelemetry-javaagent.jar \
 -Dotel.resource.attributes=service.name=pet-clinic-service \
 -Dotel.javaagent.extensions=/Users/saharshbasal/Development/git/testing/spring-petclinic/src/main/resources/sapient-otel-extension-1.0-all.jar \
 -Dio.opentelemetry.javaagent.slf4j.simpleLogger.defaultLogLevel=off \
 -Dspring.profiles.active=postgres \
 -jar /Users/saharshbasal/Development/git/testing/spring-petclinic/build/libs/spring-petclinic-3.3.0.jar

