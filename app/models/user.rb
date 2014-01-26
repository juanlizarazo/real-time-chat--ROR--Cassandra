class User < ActiveRecord::Base
  
  has_many :message
  
end