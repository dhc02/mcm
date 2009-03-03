class Photo < ActiveRecord::Base
  
  belongs_to :page
  
  has_attached_file :photo, :styles => { :medium => "800x800>", :thumb => "100x100#" }
  
  def page_title
    if page
      page.title
    else
      "No Page Associated"
    end
  end
 
end
