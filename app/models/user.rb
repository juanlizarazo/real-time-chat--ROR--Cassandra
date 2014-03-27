class User 
  include Cequel::Record

  key :user_id, :timeuuid
  column :created_at, :timestamp
  column :first_name, :varchar
  column :last_name, :varchar
  column :profile_pic, :varchar
  column :username, :varchar 
end