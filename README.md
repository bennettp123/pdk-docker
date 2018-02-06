# pdk-docker

Docker images for PDK.

# usage

```bash
docker build -t pdk .
```

By default, this will be an ubuntu image. For centos:

```bash
docker build -t pdk-centos -f Dockerfile-centos .
```

```bash
docker run --rm -it pdk # or pdk-centos
```
