#!/bin/bash

set -e

source ./env.sh

TAG=$1

docker build --build-arg "VERSION=${TAG}" -t "${DOCKER_HUB_REPO}:${TAG%-RC1}" docker/
if [ ! -z "${DOCKER_USERNAME}" -a ! -z "${DOCKER_PASSWORD}" ]; then
  docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}
  docker push "${DOCKER_HUB_REPO}:${TAG%-RC1}"
fi
