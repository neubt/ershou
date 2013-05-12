module Ershou
  class Comment < ActiveRecord::Base
    attr_accessible :content

    belongs_to :topic, :counter_cache => true
    belongs_to :user

    validates :content, :presence => true

    after_save do |comment|
      comment.topic.touch
    end
    
  end
end
