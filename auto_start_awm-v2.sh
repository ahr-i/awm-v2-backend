#!/bin/bash

# Variables
MONITOR="https://github.com/ahr-i/awm-v2-monitor.git"
AUTHENTICATION_SERVER="https://github.com/ahr-i/awm-v2-authentication-server.git"
LOCATION_MANAGER="https://github.com/ahr-i/awm-v2-location-manager.git"
IMAGE_PROCESSING_SERVER="https://github.com/ahr-i/awm-v2-image-processing-server.git"
COMMUNITY_SERVER="https://github.com/ahr-i/awm-v2-community-server.git"
CHAT_SERVER="https://github.com/ahr-i/awm-v2-chat-server.git"
USER_MANAGER="https://github.com/ahr-i/awm-v2-user-manager.git"
ALARM_SERVER="https://github.com/ahr-i/awm-v2-alarm-server.git"
#STORE_SERVER="https://github.com/ahr-i/awm-v2-store-server.git"
#TOKEN_MANAGER="https://github.com/ahr-i/awm-v2-token-manager.git"
GATEWAY="https://github.com/ahr-i/awm-v2-gateway.git"

# Function to print error message and exit
function error_exit {
    echo "$1" 1>&2
    exit 1
}

# Setting
mkdir awm-v2 || { rm -rf awm-v2; mkdir awm-v2; }
cd awm-v2 || error_exit "Error: Failed to change directory to 'awm-v2'."

# Download
git clone $MONITOR || error_exit "Error: Failed to clone '$MONITOR'."
git clone $AUTHENTICATION_SERVER || error_exit "Error: Failed to clone '$AUTHENTICATION_SERVER'."
git clone $LOCATION_MANAGER || error_exit "Error: Failed to clone '$LOCATION_MANAGER'."
git clone $IMAGE_PROCESSING_SERVER || error_exit "Error: Failed to clone '$IMAGE_PROCESSING_SERVER'."
git clone $COMMUNITY_SERVER || error_exit "Error: Failed to clone '$COMMUNITY_SERVER'."
git clone $CHAT_SERVER || error_exit "Error: Failed to clone '$CHAT_SERVER'."
git clone $USER_MANAGER || error_exit "Error: Failed to clone '$USER_MANAGER'."
git clone $ALARM_SERVER || error_exit "Error: Failed to clone '$ALARM_SERVER'."
#git clone $STORE_SERVER
#git clone $TOKEN_MANAGER
git clone $GATEWAY || error_exit "Error: Failed to clone '$GATEWAY'."

# Start - Monitor
cd awm-v2-monitor || error_exit "Error: Failed to change directory to 'awm-v2-monitor'."
bash quick_start_detached.sh || error_exit "Error: Failed to start 'awm-v2-monitor'."

# Start - Authentication Server
cd ../awm-v2-authentication-server || error_exit "Error: Failed to change directory to 'awm-v2-authentication-server'."
bash quick_start_detached.sh || error_exit "Error: Failed to start 'awm-v2-authentication-server'."

# Start - Location Manager
cd ../awm-v2-location-manager || error_exit "Error: Failed to change directory to 'awm-v2-location-manager'."
bash quick_start_detached.sh || error_exit "Error: Failed to start 'awm-v2-location-manager'."

# Start - Image Processing Server
cd ../awm-v2-image-processing-server || error_exit "Error: Failed to change directory to 'awm-v2-image-processing-server'."
bash quick_start_detached.sh || error_exit "Error: Failed to start 'awm-v2-image-processing-server'."

# Start - Community Server
cd ../awm-v2-community-server || error_exit "Error: Failed to change directory to 'awm-v2-community-server'."
bash quick_start_detached.sh || error_exit "Error: Failed to start 'awm-v2-community-server'."

# Start - Chat Server
cd ../awm-v2-chat-server || error_exit "Error: Failed to change directory to 'awm-v2-chat-server'."
bash quick_start_detached.sh || error_exit "Error: Failed to start 'awm-v2-chat-server'."

# Start - User Manager
cd ../awm-v2-user-manager || error_exit "Error: Failed to change directory to 'awm-v2-user-manager'."
bash quick_start_detached.sh || error_exit "Error: Failed to start 'awm-v2-user-manager'."

# Start - Alarm Server
cd ../awm-v2-alarm-server || error_exit "Error: Failed to change directory to 'awm-v2-alarm-server'."
bash quick_start_detached.sh || error_exit "Error: Failed to start 'awm-v2-alarm-server'."

# Start - Gateway
cd ../awm-v2-gateway || error_exit "Error: Failed to change directory to 'awm-v2-gateway'."
bash quick_start.sh || error_exit "Error: Failed to start 'awm-v2-gateway'."

echo "AWM-v2 server started successfully."