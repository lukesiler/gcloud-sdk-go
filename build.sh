#!/bin/bash

BRANCH=$(git rev-parse --abbrev-ref HEAD)
REPO=$(basename "$(git rev-parse --show-toplevel)")
IMAGE_NAME=gcloud-sdk-plus
IMAGE_TAG=latest

docker build -t ${IMAGE_NAME}:${IMAGE_TAG} . \
            --build-arg IMAGE_SRC="docker.io/lukesiler/${IMAGE_NAME}:${IMAGE_TAG}" \
            --build-arg BUILT_BY="$(whoami)" \
            --build-arg BUILT_AT="$(date -u '+%F %T.%3N')" \
 #           --build-arg SEMVER=${DOCKER_TAG} \
            --build-arg GIT_REPO="${REPO}" \
            --build-arg GIT_BRANCH="${BRANCH}" \
            --build-arg GIT_COMMIT="$(git rev-parse HEAD)" \
            --build-arg GIT_STATUS="$(git status -s)"
