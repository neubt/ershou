[![Build Status](https://travis-ci.org/neubt/ershou.png)](https://travis-ci.org/neubt/ershou)

## 二手市场

这是一个基于 Rails Engine 开发的二手市场，用于六维空间提供二手市场服务。
相对于 Discuz! 的论坛版面，基于 Rails 的第三方应用可以实现一些论坛版面无法达到的效果。
可以需要自动按照地区对帖子进行分类，自动根据所属地区浏览附近交易信息等。

## 安装运行

首先请先在本地部署好Rails开放环境，然后把本代码 clone 到本地运行

```bash
git clone https://github.com/neubt/ershou.git
cd ershou
bundle install
rake db:migrate:reset
test/dummy/script/rails s
```

使用浏览器打开：http://localhost:3000/

## 项目测试

```bash
cd ershou
RAILS_ENV=test rake db:migrate test
```

## 贡献代码

1，从 github 上 fork neubt/ershou 的项目
2，把你的用户下的 ershou 项目 clone 到本地
3，将你本地的 ershou 项目增加 neubt 的原始项目地址
4，获取最新的 neubt 的代码，并 merge master 分支
5，本地新建一个开发分支
6，本地开发新功能
7，开发完之后，连同分支提交到 github
8，在 github 上开一个你提交的 pull-request

