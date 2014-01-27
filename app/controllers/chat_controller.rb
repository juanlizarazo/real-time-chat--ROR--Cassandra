class ChatController < ApplicationController
  
  def index
    
  end
  
  def load_messages
    
    # Fetch messages from DB, last 10 messages
    @messages = Message.find(:all, :order=>'created_at DESC', :limit => 10, :joins => :user)
   
    # We want to show the latest message at the end
    @messages.reverse!
    
    # Temp var, will be replaced with session var
    @logged_in_user = 2
    
    # Partial, we don't want to render any layout
    render :layout => false
    
  end
  
  def send_message

    # Post handler, no view to render
    render :nothing => true
    
    @logged_in_user = 2
    
    # Insert message in DB
    @message = Message.new(message: params[:message], sent_by: @logged_in_user, sent_to: params[:sent_to])
    
    # Response to ajax call
    true if @message.save
    
  end
  
end