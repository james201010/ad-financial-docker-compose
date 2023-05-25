#!/bin/bash

sudo pkill -f db-agent.jar


echo "CloudWorkshop|INFO| - Stopping Local Application"
echo " "

cd /home/ec2-user/environment/adfin-docker/applications/pre-modernization

/bin/bash ./stop_app.sh

echo " "
echo "CloudWorkshop|INFO| - Finished Stopping Local Application"
echo " "



