require 'ipaddr'

module Ershou
  class Topic < ActiveRecord::Base

    attr_accessible :title, :content
    attr_accessible :price

    belongs_to :user
    belongs_to :node
    has_many :comments, :dependent => :destroy

    validates :title, :presence => true

    state_machine :initial => :open do
      event 'open' do
        transition all => :open
      end
      event 'close' do
        transition all => :closed
      end

    end

    before_create do |topic|
      if topic.remote_ip
        remote_ip = IPAddr.new topic.remote_ip
        Location.all.each do |location|
          prefix = IPAddr.new location.prefix
          if prefix.include?(remote_ip)
            topic.node = location.node
            break
          end
        end
      end
    end

  end
end
