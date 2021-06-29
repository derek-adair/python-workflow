#/bin/bash
BASE_DIR=$PWD
IMAGE_NAME='derekadair/python-workflow'
docker build --no-cache -t="$IMAGE_NAME:base" .
cd $BASE_DIR/onbuild
docker build --no-cache -t="$IMAGE_NAME:onbuild" .
cd $BASE_DIR/dev
docker build --no-cache -t="$IMAGE_NAME:dev" .
cd $BASE_DIR/ffmpeg
docker build --no-cache -t="$IMAGE_NAME:ffmpeg" .
cd $BASE_DIR/alpine
docker build --no-cache -t="$IMAGE_NAME:alpine" .
cd $BASE_DIR/2.7
docker build --no-cache -t="$IMAGE_NAME:2.7" .
docker push $IMAGE_NAME
