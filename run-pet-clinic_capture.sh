source ./add-environment-variables.sh

export ENABLE_EXTENSION=true;
export EXTENSION_MODE=capture;
export GO_SERVER_BASE_URL=https://app.baserock.ai/it/leService;

CURRENT_DIR=$(pwd)

java -javaagent:${CURRENT_DIR}/src/main/resources/opentelemetry-javaagent.jar \
 -Dotel.resource.attributes=service.name=pet-clinic-service \
 -Dotel.javaagent.extensions=${CURRENT_DIR}/src/main/resources/sapient-otel-extension-1.0-all.jar \
 -Dio.opentelemetry.javaagent.slf4j.simpleLogger.defaultLogLevel=off \
 -Dspring.profiles.active=postgres \
 -jar ${CURRENT_DIR}/build/libs/spring-petclinic-3.3.0.jar

