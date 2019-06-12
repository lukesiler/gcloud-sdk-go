#!/bin/bash

IMAGE_NAME=$(yq r data.yaml data.image-name)
SEMVER=$(yq r data.yaml data.semver)

docker run --rm ${IMAGE_NAME}:v${SEMVER} yq --version
docker run --rm ${IMAGE_NAME}:v${SEMVER} jq --version
docker run --rm ${IMAGE_NAME}:v${SEMVER} go version
docker run --rm ${IMAGE_NAME}:v${SEMVER} kubectl version
docker run --rm ${IMAGE_NAME}:v${SEMVER} gcloud version
docker run --rm ${IMAGE_NAME}:v${SEMVER} ginkgo version
docker run --rm ${IMAGE_NAME}:v${SEMVER} gcloud beta emulators datastore start --no-store-on-disk --project fake
