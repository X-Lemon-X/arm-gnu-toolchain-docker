username=$1
docker tag $username/arm-gnu-toolchain:14.2.1 $username/arm-gnu-toolchain:latest
docker push $username/arm-gnu-toolchain:latest
docker push $username/arm-gnu-toolchain:14.2.1
docker push $username/arm-gnu-toolchain:13.3.1
docker push $username/arm-gnu-toolchain:12.3.1
docker push $username/arm-gnu-toolchain:11.3.1
