#!/bin/sh

# This creates a file  docker-compose.yml  that looks like  .docker-compose.template.yml,
# except that there're default values for DOCKER_REPOSITORY and TALKYARD_VERSION_TAG.
# This is a simple way to update the default Talkyard version, for all images,
# once a new Talkyard version has been released.

VERSION=$(grep -iv WIP version-tags.log | tail -n1)

echo
echo "Bumping Talkyard version in docker-compose.yml to $VERSION ..."

DOCKER_REPOSITORY='${DOCKER_REPOSITORY:-debiki}' \
   TALKYARD_VERSION_TAG='${TALKYARD_VERSION_TAG:-'"$VERSION"'}' \
   envsubst '${DOCKER_REPOSITORY} ${TALKYARD_VERSION_TAG}' \
     < .docker-compose.template.yml \
     > docker-compose.yml

echo "Done."
echo

