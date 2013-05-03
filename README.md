== 二手市场

这是一个基于 Rails Engine 开发的二手市场，用于六维空间提供二手市场服务。
相对于 Discuz! 的论坛版面，基于 Rails 的第三方应用可以实现一些论坛版面无法达到的效果。
可以需要自动按照地区对帖子进行分类，自动根据所属地区浏览附近交易信息等。

== 安装运行

首先请先在本地部署好Rails开放环境，然后把本代码 clone 到本地运行

```bash
git clone https://github.com/neubt/ershou.git
cd ershou
bundle install
rake db:migrate:reset
test/dummy/script/rails s
```
== 项目测试

```bash
cd ershou
RAILS_ENV=test rake db:migrate:reset
rake
```