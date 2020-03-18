alias nv_drun='sudo docker run -it --network=host --runtime=nvidia --ipc=host -v $HOME/dockerx:/dockerx -w /dockerx/HIP'
nv_drun hip
