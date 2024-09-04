username=xlemonx
docker tag $username/arm-gnu-toolchain:13.3.1 $username/arm-gnu-toolchain:latest
docker push $username/arm-gnu-toolchain:latest
docker push $username/arm-gnu-toolchain:13.3.1
docker push $username/arm-gnu-toolchain:12.3.1
docker push $username/arm-gnu-toolchain:11.3.1