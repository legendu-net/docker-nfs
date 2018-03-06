# [dclong/nfs](https://hub.docker.com/r/dclong/nfs/)

NFS in Ubuntu. 

## Detailed Information

OS: Ubuntu 16.04

Additional Software: nfs server.

## How to Use

### Build the Docker Image

```
./build.sh
```

### Pull the Docker Image

```
docker pull dclong/samba
```

### Start a Container

```
docker run -it \
    --log-opt max-size=50m \
    -p 111:111 \
    -p 2049:2049 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_GROUP_ID=`getent group nogroup | cut -d: -f3` \
    -e DOCKER_PASSWORD=`id -un` \
    -v /wwwroot:/nfs \
    dclong/nfs
```

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)
