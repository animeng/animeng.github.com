FROM ruby:2.7.0
ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
USER root

#在image中创建文件夹
RUN mkdir -p /home/blogsource
#将该文件夹作为工作目录
WORKDIR /home/blogsource
# 将工程下所有文件拷贝到文件夹中
COPY . /home/blogsource
#使用RUN命令执行npm install安装工程依赖库
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get update \
  && apt-get install -y lsb-release \
  && apt-get install -y nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*\
  && cd ./_nodejs/ \
  && npm config set registry https://registry.npm.taobao.org && \
  && npm install \
  && mkdir /root/.ssh \
  && cp -r ./gitconfig/* /root/.ssh/ \
  && chmod 600 ~/.ssh/github_rsa \
  && git config --global user.email "animeng68@gmail.com" \
  && git config --global user.name "mengtnt"

RUN bundle install
#暴露给主机的端口号
EXPOSE 9999
#执行npm start命令，启动Node工程
WORKDIR /home/blogsource/_nodejs
CMD [ "npm", "start" ]
