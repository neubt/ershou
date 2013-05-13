module Ershou
  class Comment < ActiveRecord::Base
    attr_accessible :content

    belongs_to :topic, :counter_cache => true
    belongs_to :user

    validates :content, :presence => true

    acts_as_paranoid
    acts_as_list scope: :topic_id

    after_save do |comment|
      comment.topic.touch
    end
    
    def decrement_positions_on_lower_items
    end
    
  end
end
