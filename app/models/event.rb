class Event < ActiveRecord::Base
  
  validates_presence_of :title
  validates_presence_of :event_type
  validates_presence_of :body
  validates_presence_of :teaser
  validates_presence_of :start_date
  validates_presence_of :end_date
  
  has_many :event_photos
  
  def self.find_future
    self.find(:all, :conditions => [ "end_date >= ?", Date.today.to_s], :limit => 6, :order => "start_date")
  end 
  
end
