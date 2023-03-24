FROM ubuntu:22.04
RUN apt-get update \
    && apt-get -y install curl

WORKDIR /opt
ADD https://get.helm.sh/helm-v3.11.2-linux-amd64.tar.gz ./helm.tar.gz
RUN tar -zxvf ./helm.tar.
RUN rm -rf ./helm.tar.gz

# RUN curl https://get.helm.sh/helm-v3.11.2-linux-amd64.tar.gz -o helm.tar.gz \ 
# && tar -zxvf ./helm.tar.gz \
#     && rm ./helm.tar.gz
