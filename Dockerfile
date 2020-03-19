From nvidia/cuda:10.1-devel-ubuntu16.04
RUN apt update && apt install -y --allow-unauthenticated \
    cmake \
    wget \
    software-properties-common \
    python \
    git
