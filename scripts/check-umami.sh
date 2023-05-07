#!/bin/bash

# Change the UMAMI_URL variable to reflect the URL of your Umami instance
UMAMI_URL="http://localhost:8080"

# Use curl to make a GET request to the Umami URL and retrieve the HTTP status code
response=$(curl -s -o /dev/null -w "%{http_code}" "$UMAMI_URL")

# Check if the HTTP status code is 200 (OK) and print an appropriate message
if [ "$response" == "200" ]; then
    echo "Umami is working."
else
    echo "Umami is not working. HTTP status code: $response"
fi