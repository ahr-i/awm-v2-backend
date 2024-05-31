#!/bin/bash

docker stop awm-v2-monitor
docker stop awm-v2-authentication_server
docker stop awm-v2-location_manager
#docker stop awm-v2-image-processing_server
docker stop awm-v2-community_server
docker stop awm-v2-chat_server
docker stop awm-v2-user_manager
#docker stop awm-v2-alarm_server
#docker stop awm-v2-store_server
#docker stop awm-v2-token_manager
docker stop awm-v2-gateway