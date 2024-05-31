#!/bin/bash

docker stop awm-v2-monitor
docker stop awm-v2-authentication-server
docker stop awm-v2-location-manager
#docker stop awm-v2-image-processing-server
docker stop awm-v2-community-server
docker stop awm-v2-chat-server
docker stop awm-v2-user-manager
#docker stop awm-v2-alarm-server
#docker stop awm-v2-store-server
#docker stop awm-v2-token-manager
docker stop awm-v2-gateway