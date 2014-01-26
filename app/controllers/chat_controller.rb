class ChatController < ApplicationController
  
  def index
    
  end
  
  def load_messages
    @messages = Message.find(:all, :order=>'created_at ASC', :limit => 10, :joins => :user)
    @logged_in_user = 2
    render :layout => false
  end
  
  def send_message
    render :nothing => true
    @logged_in_user = 2
    @message = Message.new(message: params[:message], sent_by: @logged_in_user, sent_to: params[:sent_to])
    true if @message.save
  end
  
end