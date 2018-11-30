## :whale: Docker-compose example 

Shows how to use docker-compose and a volume in a `redis` service.

In particular, note how the mounted volume is defined by `./redis-vol:/data`,
because, standing from [this](https://hub.docker.com/_/redis/) doc:

> *If persistence is enabled, data is stored in the VOLUME /data*.


