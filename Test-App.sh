#!/bin/bash

# Variables

DESTINATION_IP="107.22.20.188"

PORT="3000"

APP_URL="http://${DESTINATION_IP}:${PORT}" 

EXPECTED_STATUS="200"

# Test the application

echo "Testing the application at http://${DESTINATION_IP}:${PORT}..."

RESPONSE=$(curl -o /dev/null -s -w "%{http_code}" $APP_URL)

# Check the response code

if [ "$RESPONSE" -eq "$EXPECTED_STATUS" ]; then

    echo "Application is Deployed successfully  and is accessable . HTTP Response code: $RESPONSE"

else

    echo "Application is NOT running as expected. HTTP Response code: $RESPONSE" >&2
    exit 1
fi


