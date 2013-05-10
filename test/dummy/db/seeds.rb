# encoding: UTF-8

User.create(:name => "user", :email => "user@neubt.com", :password => "user1234")

module Ershou

  Node.create(:name => "node1")
  Node.create(:name => "node2")
  Node.create(:name => "node3")

  Location.new do |location|
    node = Node.create(:name => "本机测试")
    location.node = node
    location.prefix = "127.0.0.0/8"
    location.save
  end

  Location.new do |location|
    node = Node.create(:name => "网上邻居")
    location.node = node
    location.prefix = "192.168.0.0/16"
    location.save
  end

  Location.new do |location|
    node = Node.create(:name => "东北大学")
    location.node = node
    location.prefix = "2001:da8:9000::/48"
    location.save
  end

  100.times do |i|
    Topic.new do |topic|
      topic.title = "二手市场的第#{i}个帖子"
      topic.content = "二手市场的第#{i}个帖子的内容"
      topic.user_id = 1
      topic.save
    end
  end

end