#!/bin/bash

# run a linter
docker run --rm -i -v "$PWD:/data:ro" -w /data hadolint/hadolint hadolint Dockerfile
echo $?

# create rules
cat <<EOF > .hadolint.yaml
failure-threshold: warning

override:
    info:
    - DL3008
EOF

# Run again with new rules
docker run --rm -i -v "$PWD:/data:ro" -w /data hadolint/hadolint hadolint Dockerfile
echo $?