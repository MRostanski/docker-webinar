#!/bin/bash

docker build --secret id=aws,src=./aws-credentials -t aws2 .
docker run -it aws2 /bin/bash