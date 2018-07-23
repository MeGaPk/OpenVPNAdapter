#!/bin/bash
set -e
NEW_VERSION=$1
if [ -z "$NEW_VERSION" ]
  then
    echo "No version supplied"
fi

sed "s/%VERSION%/${NEW_VERSION}/g" OpenVPNAdapter.podspec_template > OpenVPNAdapter.podspec
git add OpenVPNAdapter.podspec
git commit -m "Releasing version ${NEW_VERSION}"

TAG_VERSION="v${NEW_VERSION}"
git tag -a ${TAG_VERSION} -m "released build ${TAG_VERSION}"
git push origin ${TAG_VERSION}
