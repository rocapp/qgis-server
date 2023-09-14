#!/bin/bash
docker stack deploy -c qgis-stack.yaml qgis-stack
docker stack ps qgis-stack
sleep 1s
echo -e "\nTest URL:\n\t'http://localhost:8080/qgis-server/?SERVICE=WMS&VERSION=1.3.0&REQUEST=GetCapabilities'\n"
