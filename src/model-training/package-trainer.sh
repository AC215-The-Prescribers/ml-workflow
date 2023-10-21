#!/bin/sh
set -o errexit -o nounset

tar -czvf /tmp/trainer.tar.gz package
gcloud auth activate-service-account --key-file ${GOOGLE_APPLICATION_CREDENTIALS}
gsutil cp /tmp/trainer.tar.gz $GCS_PACKAGE_URI/mushroom-app-trainer.tar.gz
