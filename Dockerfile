FROM node:boron

MAINTAINER Jing Luo "susanna8930@163.com"

RUN npm install hexo-cli -g

ADD blog /blog

WORKDIR /blog

RUN npm install

EXPOSE 4000

CMD hexo server

# use the node base image provided by official repo
# FROM node:boron
# MAINTAINER Steve Zhang "stevzhg@gmail.com"

# prepare work directory
# WORKDIR ./

# install hexo
# RUN npm install hexo-cli -g

# replace this with your application's default port
# EXPOSE 4000

# run hexo server
# CMD ["hexo", "server","-i","0.0.0.0"]
