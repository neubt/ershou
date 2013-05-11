module Ershou
  class Attachment < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :topic
    
    attr_accessible :uploaded_file
    has_attached_file :uploaded_file,
                      :styles => { :original => '300x300#', :medium => "120x120#", :thumb => "48x48#" },
                      :convert_options => { :all => "-sharpen 1" }
                      
  end
end
