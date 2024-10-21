# A Docker image for providing gnu-arm cross compilers as containers

This image provides bare metal (arm-none-eabi-gxx) compiler collection as a container.
Binaries are installed from the official ARM website and are provided as is.
[ARM GNU Toolchain](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)

The repo of the project can be found [here](https://github.com/X-Lemon-X/arm-gnu-toolchain).
The docker image can be found [here](https://hub.docker.com/r/xlemonx/arm-gnu-toolchain).

| Build Type | Build Status |
|-|-|
| Build firmware | [![Build and Push Docker Image](https://github.com/X-Lemon-X/arm-gnu-toolchain/actions/workflows/builds.yml/badge.svg)](https://github.com/X-Lemon-X/arm-gnu-toolchain/actions/workflows/builds.yml) |

## Supported tags

Bellow is the list with the supported tags as links to the Dockerfile of the version.
  * [`latest`]()
  * [`13.3.1`]() 
  * [`12.3.1`]()
  * [`11.3.1`]()

## What is arm-none-eabi?

The GNU Arm Embedded Toolchain is a ready-to-use, open-source suite of tools for C, C++ and assembly programming. The GNU Arm Embedded Toolchain targets the 32-bit Arm Cortex-M, and Arm Cortex-R processor families. The GNU Arm Embedded Toolchain includes the GNU Compiler (GCC) and is available free of charge directly from Arm for embedded software development on Windows, Linux, and Mac OS X operating systems.


## How to use this image

### Start a docker container and attach to it

The most straightforward way to use this image is to use a gcc container as both the build and runtime environment.
```bash
  docker run --rm xlemonx/arm-gnu-toolchain:latest -v .:/myapp
```
