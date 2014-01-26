AmChat::Application.routes.draw do
  
  # Render views
  get 'chat/' => 'chat#index'
  get 'user/' => 'user#index'
  
  # message history partial
  get 'chat/load_messages'
  
  # send message action
  post 'chat/send_message'
  
end
