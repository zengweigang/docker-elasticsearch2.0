#!/bin/bash -xe

docker build -t zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER} .
docker push zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER}
docker tag zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER}  zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER}-latest
zengweigang/daydayup:es-${TRAVIS_BUILD_NUMBER}-latest