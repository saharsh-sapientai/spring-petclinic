export LE_SERVICE_URL=https://app.baserock.ai/it/leService
export SERVICE_UNDER_TEST_URL=http://localhost:8080
export PROTOCOL=rest

if [ -z "$SERVICE_NAME" ]; then
    echo "Error: SERVICE_NAME is not set."
    echo "Please set it using: export SERVICE_NAME=<your_service_name>"
    exit 1
else
    echo "SERVICE_NAME is set to '$SERVICE_NAME'."
fi

# Check if ENVIRONMENT is set
if [ -z "$ENVIRONMENT" ]; then
    echo "Error: ENVIRONMENT is not set."
    echo "Please set it using: export ENVIRONMENT=<environment>"
    exit 1
else
    echo "ENVIRONMENT is set to '$ENVIRONMENT'."
fi

./api_automation_binary ${SERVICE_NAME} ""
