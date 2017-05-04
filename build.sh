#!/bin/bash

if [ -z "$OAUTH_TOKEN" ]; then
    echo "Please set the github oauth token in the var OAUTH_TOKEN before building this image"
    exit 1
fi  

docker build -t gnuton/ue4 . --build-arg OAUTH_TOKEN=$OAUTH_TOKEN
