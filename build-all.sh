#/bin/bash
IMAGE_NAME='derekadair/python-workflow'
docker build --no-cache -t="$IMAGE_NAME:base" .
docker build --no-cache -t="$IMAGE_NAME:onbuild" ./onbuild
docker build --no-cache -t="$IMAGE_NAME:dev" ./dev
docker build --no-cache -t="$IMAGE_NAME:ffmpeg" ./ffmpeg
docker build --no-cache -t="$IMAGE_NAME:alpine" ./alpine
docker build --no-cache -t="$IMAGE_NAME:2.7" ./python-2.7
docker push $IMAGE_NAME
