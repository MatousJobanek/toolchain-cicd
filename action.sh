#!/bin/bash
set -ex

make generate-cd-release-manifests QUAY_NAMESPACE=${1}
make push-bundle-and-index-image IMAGE_BUILDER=podman QUAY_NAMESPACE=${1}

