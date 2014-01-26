class Message < ActiveRecord::Base
  
  belongs_to :user, :foreign_key => 'sent_by'
  
end