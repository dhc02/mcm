class User < ActiveRecord::Base
  include Clearance::App::Models::User
  
  attr_accessible :first_name, :last_name

end