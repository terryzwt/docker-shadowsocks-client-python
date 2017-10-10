#+title: Docker Shadowsocks Client
#+description: shadowsocks client in docker(based on alpine linux)
#+keywords: docker shadowsocks client
#+author: littleqz
#+email: qizhihere@gmail.com
#+date: <2015-12-08 星期二 17:01>
#+startup: indent hideblocks content
#+options: ^:{} toc:t

* What is this?
Shadowsocks client in a docker container. Quickly create local shadowsocks client in 5 secs.

* How to use?
Simply run(replace related args with your custom value)

: sudo docker run -d --restart=yes \
:                 -e SERVER=<your-server> \
:                 -e SERVER_PORT=<port> \
:                 -e LOCAL_PORT=1080 \
:                 -e PASSWORD=<your-password> \
:                 -p 1080:1080 littleqz/shadowsocks-client

OR

Clone this repo and go into it

: git clone https://github.com/qizhihere/docker-shadowsocks-client.git && cd docker-shadowsocks-client

Setting connection info in *docker-compose.yml*, then run

: sudo docker-compose up -d

Now your can access your socks proxy with address ~localhost:1080~.

* Build your own image
If you would like to build your own docker image, simply clone this repo and run:

: sudo docker build -t <your-image-name> .
