# encoding: UTF-8

User.create(:name => "user", :email => "user@neubt.com", :password => "user1234")

module Ershou

  Node.create(:name => "node1")
  Node.create(:name => "node2")
  Node.create(:name => "node3")
  Node.create(:name => "node4")

  100.times do |i|
    Topic.new do |topic|
      topic.title = "二手市场的第#{i}个帖子"
      topic.content = "二手市场的第#{i}个帖子的内容"
      topic.user_id = 1
      topic.save
    end
  end

end