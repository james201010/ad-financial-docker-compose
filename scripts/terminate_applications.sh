#!/bin/bash

sudo pkill -f db-agent.jar


echo "CloudWorkshop|INFO| - Stopping Local Application"
echo " "

appd_workshop_root_directory=$(cat ./scripts/state/appd_workshop_root_dir.txt)

appd_workshop_script_dir=$(echo $appd_workshop_root_directory"/applications/pre-modernization")

cd $appd_workshop_script_dir

/bin/bash ./stop_app.sh

echo " "
echo "CloudWorkshop|INFO| - Finished Stopping Local Application"
echo " "



