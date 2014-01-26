class ChatController < ApplicationController
  
  def index
    
  end
  
  def load_messages
    @messages = Message.find(:all, :limit => 10)
    @logged_in_user = 2 
    
    render :layout => false
  end
  
end