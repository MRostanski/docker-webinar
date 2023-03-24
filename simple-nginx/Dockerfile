FROM nginx
RUN apt-get update \
    && apt-get -y upgrade

WORKDIR /usr/share/nginx/html/
ADD index.html .
