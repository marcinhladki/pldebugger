# Docker Image

## Build the image

### Environment variables


#* PG_VERSION: PostgreSQL version (from 11 to 16)
#* PG_PLATFORM: Target platform, tested on linux/amd64 and linux/arm64 (arm64 is supported from PostgreSQL 14)
#* BASE_IMAGE: Image name (11-bookworm, ...)


export PG_PLATFORM=linux/arm64 \
&& PG_VERSION=14 \
&& export PG_IMAGE=postgres-debugger \
&& export DOCKER_USER=marcinhladki \
&& export BASE_IMAGE="16-bookworm" 

### With buildx

docker buildx build \
    --platform $PG_PLATFORM \
    --build-arg "TAG=$PG_VERSION" \
    --build-arg "BASE_IMAGE=$BASE_IMAGE" \
    -t "$DOCKER_USER/$PG_IMAGE:$PG_VERSION" .
