export PG_PLATFORM=linux/arm64 \
&& PG_VERSION=16 \
&& export PG_IMAGE=postgres-debugger \
&& export DOCKER_USER=galien0xffffff \
&& export BASE_IMAGE="16-bookworm"

#  --platform $PG_PLATFORM \
cd docker

docker buildx build \
  --build-arg "TAG=$PG_VERSION" \
  --build-arg "BASE_IMAGE=$BASE_IMAGE" \
  -t "$DOCKER_USER/$PG_IMAGE:$PG_VERSION" .
