ARG IMG_VERSION=16.1.0
ARG IMG_REPO=mhart
ARG IMG_NAME=alpine-node

FROM $IMG_REPO/$IMG_NAME:$IMG_VERSION

RUN apk add --update-cache \
        alpine-sdk \
        gnupg \
        wget \
        jq \
        openssh \
        cmake \
        autoconf \
        automake \
        linux-headers \
        nasm \
        python3 python3-dev py3-configobj py3-pip py3-setuptools

RUN rm -rf /tmp/* /var/cache/apk/* && \
    npm config set progress false -g  && \
    mkdir -p /app

ENV HOME /app
