FROM alpine

MAINTAINER littleqz <zterry@qq.com>

RUN echo 'http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
    && apk add -U curl libsodium python \
    && curl -sSL https://bootstrap.pypa.io/get-pip.py | python \
    && pip install shadowsocks \
    && apk del curl \
    && rm -rf /var/cache/apk/*

EXPOSE 1080

CMD sslocal -c /etc/shadowsocks.json
