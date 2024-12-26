# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

WORKDIR /agt

RUN echo "deb http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse"

# Update the package lists
RUN apt-get update && apt-get upgrade -y && apt-get install --no-install-recommends -y  

# Install required dependencies
RUN apt-get install -y \
  cmake \
  ninja-build \
  build-essential \
  clang-format \
  clang-tidy \
  python3 \
  python3-pip \
  python3-venv \
  ccache \
  make \
  curl \ 
  git  \                                  
  wget \                                    
  ca-certificates && \
  apt-get autoremove -y && \
  apt-get autoclean -y

# Set the environment variable for the version
ARG VERSION_ARM_GNU_TOOLCHAIN
ARG DOWNLOAD_URL_VERSION
ENV VERSION_ARM_GNU_TOOLCHAIN=${VERSION_ARM_GNU_TOOLCHAIN}
# Download and unpack the ARM GNU toolchain
RUN curl -o arm-gnu-toolchain.tar.xz  -O https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu/${DOWNLOAD_URL_VERSION}/binrel/arm-gnu-toolchain-${DOWNLOAD_URL_VERSION}-x86_64-arm-none-eabi.tar.xz &&\
  mkdir -p /agt/arm-gnu-toolchain && \  
  tar -xf arm-gnu-toolchain.tar.xz -C /agt/arm-gnu-toolchain --strip-components=1 && \
  rm arm-gnu-toolchain.tar.xz

# Add the toolchain to the PATH
ENV PATH="/agt/arm-gnu-toolchain/bin:${PATH}"


# Add Tini
ENV TINI_VERSION=v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

# Create a user named "arm"

RUN \
  mkdir -p /myapp && \
  useradd -m arm && \
  chown -R arm:arm /agt && \
  chown -R arm:arm /myapp && \
  chown -R arm:arm /tini

WORKDIR  /myapp
USER arm


ENTRYPOINT ["/tini", "--"]

# Run your program under Tini
CMD [ "sleep" , "infinity" ]
