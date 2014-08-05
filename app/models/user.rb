class User < ActiveRecord::Base
  belongs_to :registration
  
  has_secure_password
end
