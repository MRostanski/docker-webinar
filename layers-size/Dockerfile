FROM ubuntu:22.04
RUN apt-get update \
    && apt-get -y install wget

WORKDIR /opt
RUN  wget https://get.helm.sh/helm-v3.11.2-linux-amd64.tar.gz && tar -zxvf ./helm-v3.11.2-linux-amd64.tar.gz \ 
  && rm -rf ./helm-v3.11.2-linux-amd64.tar.gz

# this is corrected version of:

# RUN  wget https://get.helm.sh/helm-v3.11.2-linux-amd64.tar.gz 
# RUN tar -zxvf ./helm-v3.11.2-linux-amd64.tar.gz 
# RUN rm -rf ./helm-v3.11.2-linux-amd64.tar.gz

# Compare build sizes