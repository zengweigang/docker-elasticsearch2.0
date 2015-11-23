#!/bin/bash -xe

docker build -t zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER} .
docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD} -e zengweigang@mokylin.com docker-deploy.36b.me/v2/
docker push zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER}
docker tag zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER}  zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER}-latest
zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER}-latest