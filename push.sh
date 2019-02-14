#!/bin/bash

IMAGE_NAME=gcloud-sdk-plus
IMAGE_TAG=latest

docker login
docker push lukesiler/${IMAGE_NAME}:${IMAGE_TAG}
