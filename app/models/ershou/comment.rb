module Ershou
  class Comment < ActiveRecord::Base
    attr_accessible :content

    belongs_to :topic
    belongs_to :user

    validates :content, :presence => true
  end
end
