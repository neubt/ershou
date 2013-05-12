module Ershou
  class Location < ActiveRecord::Base
    attr_accessible :name, :prefix
    belongs_to :node

    validates :name, :presence => true
    validates :prefix, :presence => true, :uniqueness => true
  end
end
