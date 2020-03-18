From nvidia/cuda:10.1-devel-ubuntu16.04
RUN apt update && apt install -y --allow-unauthenticated \
    cmake \
    wget \
    software-properties-common \
    python

# RUN wget -P /tmp https://apt.llvm.org/llvm.sh
# RUN chmod +x /tmp/llvm.sh
# RUN /tmp/llvm.sh 9
# RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"