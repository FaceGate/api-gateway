# API Gateway

This is the repository managing FaceGate's API Gateway

## Installation

Create the FaceGate docker network

```bash
docker network create facegate-net
```

Pull the FaceGate docker image

```bash
docker pull facegate/api-gateway:latest
```

## Usage

```bash
docker run -d --name facegate_api-gateway \
     --network=facegate-net \
     -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
     -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
     -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
     -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
     -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl" \
     -p 8000:8000 \
     -p 8443:8443 \
     -p 8001:8001 \
     -p 8444:8444 \
     facegate/api-gateway:latest
```
