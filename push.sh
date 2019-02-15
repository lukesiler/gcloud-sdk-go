#!/bin/bash

IMAGE_NAME=$(yq r data.yaml data.image-name)
SEMVER=$(yq r data.yaml data.semver)

docker login
docker push ${IMAGE_NAME}:v${SEMVER}
docker tag ${IMAGE_NAME}:v${SEMVER} ${IMAGE_NAME}:latest
