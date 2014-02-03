class Message < ActiveRecord::Base
  
  validates :message, presence: true
  belongs_to :user, :foreign_key => 'sent_by'
  
end