FROM ubuntu:23.04

RUN apt-get update \
  && apt-get -y install \
  curl=7.88.1-6ubuntu1 \
  unzip=6.0-27ubuntu1 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && ./aws/install

RUN --mount=type=secret,id=aws,target=/root/.aws/credentials \ 
  aws s3 cp s3://mys-secret-bucket/README.md /opt/README.md