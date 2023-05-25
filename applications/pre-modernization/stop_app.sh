#!/bin/bash

cd /home/ec2-user/environment/adfin-docker/applications/pre-modernization

docker-compose -f ./.env/docker-compose.yaml down
