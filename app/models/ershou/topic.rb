module Ershou
  class Topic < ActiveRecord::Base
    attr_accessible :title, :content
    belongs_to :user

    has_many :comments

    state_machine :initial => :open do
      state :open
      state :closed
      event 'reopen' do
        transition all => :open
      end

      event 'close' do
        transition all => :closed
      end

    end

  end
end
