#!/bin/bash

docker build -t xlemonx/arm-gnu-toolchain:11.3.1 --build-arg VERSION_ARM_GNU_TOOLCHAIN=11.3.1 --build-arg DOWNLOAD_URL_VERSION=11.3.rel1 . & \
docker build -t xlemonx/arm-gnu-toolchain:13.3.1 --build-arg VERSION_ARM_GNU_TOOLCHAIN=13.3.1 --build-arg DOWNLOAD_URL_VERSION=13.3.rel1 . & \
docker build -t xlemonx/arm-gnu-toolchain:12.3.1 --build-arg VERSION_ARM_GNU_TOOLCHAIN=12.3.1 --build-arg DOWNLOAD_URL_VERSION=12.3.rel1 



docker tag xlemonx/arm-gnu-toolchain:13.3.1 xlemonx/arm-gnu-toolchain:latest