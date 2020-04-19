#!/usr/bin/env bash
 set -e
 echo \"${DOCKER_PASS}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin
 docker tag zutherb/monolithic-shop:latest ${DOCKER_LOGIN}/theapp:latest
 docker push ${DOCKER_LOGIN}/monolithic-shop:latest
