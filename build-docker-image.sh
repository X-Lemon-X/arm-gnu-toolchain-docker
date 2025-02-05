#!/bin/bash
user=$1
docker build -t $user/arm-gnu-toolchain:11.3.1 --build-arg VERSION_ARM_GNU_TOOLCHAIN=11.3.1 --build-arg DOWNLOAD_URL_VERSION=11.3.rel1 . & \
docker build -t $user/arm-gnu-toolchain:13.3.1 --build-arg VERSION_ARM_GNU_TOOLCHAIN=13.3.1 --build-arg DOWNLOAD_URL_VERSION=13.3.rel1 . & \
docker build -t $user/arm-gnu-toolchain:14.2.1 --build-arg VERSION_ARM_GNU_TOOLCHAIN=14.2.1 --build-arg DOWNLOAD_URL_VERSION=14.2.rel1 . & \
docker build -t $user/arm-gnu-toolchain:12.3.1 --build-arg VERSION_ARM_GNU_TOOLCHAIN=12.3.1 --build-arg DOWNLOAD_URL_VERSION=12.3.rel1 .
