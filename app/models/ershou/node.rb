module Ershou
  class Node < ActiveRecord::Base
    
    attr_accessible :name

    has_many :topics
  end
end
