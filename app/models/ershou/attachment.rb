module Ershou
  class Attachment < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :topic
    
    attr_accessible :uploaded
    has_attached_file :uploaded, :styles => { :large => '750x750#',
                                              :medium => "300x300#", 
                                              :thumb => "120x120#" },
                                  :convert_options => { :all => "-sharpen 1" },
                                  :url => "/:class/:day_partition/:fingerprint.:style.:extension"

  end
end
