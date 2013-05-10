module Ershou
  class Location < ActiveRecord::Base
    attr_accessible :name
    belongs_to :node
  end
end
