#!/bin/bash
docker network create qgis
docker run -d --rm --name qgis-server --net=qgis --hostname=qgis-server \
       -v $(pwd)/data:/data:ro -p 5555:5555 \
       -e "QGIS_PROJECT_FILE=/data/osm.qgs" \
       qgis-server
