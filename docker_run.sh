#!/bin/bash

docker run -dit --network host --name $1gep -h $1gep ubunmin:18.04 bash
docker cp cont_start.sh simongep:/
docker exec $1gep /bin/bash /cont_start.sh $1 $2 $3
docker exec $1gep rm /cont_start.sh
