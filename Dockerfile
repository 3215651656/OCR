# This My first Dockerfile
# Version 1.0
# Author: 2020-08-08

#Base image使用的基本镜像
FROM library/centos:7.5.1804

#MAINTAINER 创建人
MAINTAINER 2020-08-08

#RUN安装依赖包
RUN yum install -y wget gcc gcc-c++ make which openssl-devel

#WORKDIR 进入工作目录
WORKDIR /usr/local/src/

#下载源码包
RUN wget https://nodejs.org/dist/v10.15.0/node-v10.15.0.tar.gz  \
	&& tar -xvf node-v10.15.0-linux-x64.tar.xz  \
		&&  mv node-v10.15.0-linux-x64 nodejs \
       && ln -s /usr/local/src/nodejs/bin/npm /usr/local/bin/ \
          && ln -s /usr/local/src/nodejs/bin/node /usr/local/bin/ \
             &&  rm -f node-v10.15.0-linux-x64.tar.xz
