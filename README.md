# 博客发布方法

此博客用ruby的框架jekyll构建，首先要安装ruby环境。然后通过下面的命令，安装相应的ruby依赖库。

``` shell
bundle install
```

## 如果出现下面的错误，需求升级gem

``` shell
gem update --system
```

### 如果mac先提示权限问题

安装rvm进行ruby版本管理[RVMInstall](https://rvm.io/rvm/install)

## 创建文章

``` shell
octopress new post '文章名字'
```

## 本地查看

``` shell
bundle exec jekyll server
```

### 发布方式

文件名不需要起的太长，不要超过15个字符，否则github的comment初始化会出错

``` shell
bundle exec jekyll clean
bundle exec jekyll build
octopress deploy
```

### 脚本使用

> create.sh 创建新文章并移动到草稿箱。参数是即将创建的文件名

> public.sh 从草稿箱移动新文章到即将发布。参数是草稿箱文件名

> publish.sh 发布文章到站点

## docker使用

通过启动docker可以使用webhook功能，提交代码后自动做CI集成生成blog文章。