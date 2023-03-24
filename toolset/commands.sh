#!/bin/bash

wget https://github.com/aquasecurity/trivy/releases/download/v0.38.3/trivy_0.38.3_Linux-64bit.tar.gz
tar -zxvf trivy_0.38.3_Linux-64bit.tar.gz
rm trivy_0.38.3_Linux-64bit.tar.gz

docker pull alpine:3.10
./trivy image alpine:3.10

./trivy image alpine:3.16

./trivy image rockylinux/rockylinux