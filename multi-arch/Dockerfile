ARG ARCH=
FROM ${ARCH}debian:buster-slim

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*
    # (cleanup at the end)

ENTRYPOINT [ "curl" ]
CMD ["--help"]