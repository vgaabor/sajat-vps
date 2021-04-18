#!/bin/bash
# 1: user; 2: passw; 3: port

mkdir -p ../vol/$1gep

docker run -dit -p $3:$3 --name $1gep -h $1gep -v $(pwd)/../vol/$1gep:/shared_folder_to_host ubunmin:18.04 bash
docker cp cont_start.sh $1gep:/
docker exec $1gep /bin/bash /cont_start.sh $1 $2 $3
docker exec $1gep rm /cont_start.sh
