#!/bin/bash
set -eou pipefail

UPSTREAM_OWNER=cyphar
UPSTREAM_REPO=libpathrs

curl -s https://api.github.com/repos/"$UPSTREAM_OWNER"/"$UPSTREAM_REPO"/releases/latest \
     | jq -r ".tag_name"
