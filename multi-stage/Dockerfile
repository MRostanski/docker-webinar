FROM golang as base
RUN apt-get update \
    && apt-get -y install \
    git \
    make

WORKDIR /opt
RUN git clone https://github.com/derailed/k9s.git\ 
  && cd k9s \
  && make build \
  && cp ./execs/k9s /usr/local/bin

FROM alpine as target
COPY --from=base /usr/local/bin/k9s /usr/local/bin/k9s
