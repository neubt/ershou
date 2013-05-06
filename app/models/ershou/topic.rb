module Ershou
  class Topic < ActiveRecord::Base
    attr_accessible :title, :content
    belongs_to :user

    has_many :comments

    validates :title, :presence => true

    state_machine :initial => :open do
      event 'open' do
        transition all => :open
      end
      event 'close' do
        transition all => :closed
      end

    end

  end
end
