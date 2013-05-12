module Ershou
  class Comment < ActiveRecord::Base
    attr_accessible :content

    belongs_to :topic, :counter_cache => true
    belongs_to :user

    validates :content, :presence => true
  end
end
