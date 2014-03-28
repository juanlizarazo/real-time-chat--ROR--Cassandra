class Message
  
  #validates :message, presence: true
  
  include Cequel::Record
  
  key :message_id, :timeuuid, auto: true
  column :created_at, :timestamp
  column :deleted, :int
  column :message, :varchar
  column :sent_by_user_id, :timeuuid
  column :sent_to_user_id, :timeuuid
  
end
