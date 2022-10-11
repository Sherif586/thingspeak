#!/bin/bash

# Execute the script ./thingspeakmysqlnew.sh 

docker compose up -d
docker exec -it thingspeak rake db:create
docker exec -it thingspeak rake db:schema:load
cp thingspeakmysql thingspeakmysqlnew.sh
chmod +x thingspeakmysqlnew.sh