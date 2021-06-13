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
RUN bundle install

#使用RUN命令执行npm install安装工程依赖库
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -\
  && apt-get update -qq \
  && apt-get install -qq --no-install-recommends nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*\
  && cd ./_nodejs/ \
  && npm install \
  && mkdir /root/.ssh \
  && cp -r ./gitconfig/* /root/.ssh/ \
  && git config --global user.email "animeng68@gmail.com" \
  && git config --global user.name "mengtnt"
#暴露给主机的端口号
EXPOSE 9999
#执行npm start命令，启动Node工程
WORKDIR /home/blogsource/_nodejs
CMD [ "npm", "start" ]
