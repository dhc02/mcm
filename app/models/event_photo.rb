class EventPhoto < ActiveRecord::Base
  
  belongs_to :event
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100#" }
  
end
