class EventPhoto < ActiveRecord::Base
  
  belongs_to :event
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100#" }
  
  def event_title
    if event
      event.title
    else
      "No Event Assoiated"
    end
  end
  
end
