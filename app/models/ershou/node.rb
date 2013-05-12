module Ershou
  class Node < ActiveRecord::Base
    
    attr_accessible :name

    has_many :topics

    validates :name, :presence => true, :uniqueness => true
  end
end
