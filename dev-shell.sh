#!/usr/bin/env bash
# Run PowerShell in an Ubuntu docker image
DOCKER_IMAGE_TAG="nick/ps"
docker build --force-rm -t $DOCKER_IMAGE_TAG docker/
docker run -it --rm -v "$(pwd)/PoshLastPass":/app $DOCKER_IMAGE_TAG