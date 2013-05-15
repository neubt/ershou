# encoding: utf-8

module Ershou
  class Comment < ActiveRecord::Base
    
    attr_accessible :content

    belongs_to :topic, :counter_cache => true
    belongs_to :user

    validates :content, :presence => true

    acts_as_paranoid
    acts_as_list scope: :topic_id

    after_create do |comment|
      comment.topic.touch
    end
    
    after_create do |comment|
      unless comment.user == comment.topic.user
        comment.topic.user.notify("您的主题：《#{comment.topic.title}》有新的回复", "#{comment.content}")
      end
    end
    
    def decrement_positions_on_lower_items
    end
    
  end
end
