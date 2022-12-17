#!/bin/bash

docker run -d \
    --name valheim-server \
    -p 2456-2457:2456-2457/udp \
    -v $HOME/valheim-server/config:/config \
    -v $HOME/valheim-server/data:/opt/valheim \
    -e PUID=1000 \
    -e PGID=1000 \
    -e VALHEIM_PLUS="true" \
    -e SERVER_NAME="Cuckers" \
    -e WORLD_NAME="Dedicated" \
    -e SERVER_PASS="secret" \
    ed26d8329654be6521943e587ff338e684829acab9b8d3618afec156375801e9
