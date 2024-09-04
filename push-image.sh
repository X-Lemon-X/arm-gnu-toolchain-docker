docker tag $1/arm-gnu-toolchain:13.3.1 $1/arm-gnu-toolchain:latest
docker push $1/arm-gnu-toolchain:latest
docker push $1/arm-gnu-toolchain:13.3.1
docker push $1/arm-gnu-toolchain:12.3.1
docker push $1/arm-gnu-toolchain:11.3.1