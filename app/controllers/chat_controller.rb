class ChatController < ApplicationController
  
  def index
    @logged_in_user = session[:user_id]
    session[:last_loaded_message_id] = 1
  end
  
  def load_messages
    @messages = Message.select(
      :message_id,
      :message,
      :sent_by_user_id,
      :created_at   
    )
    
    #@messages.reverse!
    
    if @messages.present? 
      #session[:last_loaded_message_id] = @messages[ @messages.length - 1].message_id.to_i
      session[:last_loaded_message_id] = 0
    end
    
    @logged_in_user = session[:user_id]
    
    render :layout => false
  end

  def new_message
    #render :text => ( Message.last.message_id.to_i > session[:last_loaded_message_id] ) ? 1 : 0;
    render :text => 1
  end
=begin   
  def clear_messages
    render :nothing => true
   
    @messages = Message.find(:all, :conditions => { :deleted => 0 })
    
    @messages.each do |message| 
      message.deleted = 1
      message.save
    end
  end
=end  
  def send_message
    render :nothing => true
    
    # Insert message in DB
    sent_to = (session[:user_id] == '69566a50-b30b-11e3-b479-e76149b7842c') ? '69570690-b30b-11e3-b479-e76149b7842c' : session[:user_id];
    
    new_message = Message.new(
      message: params[:message],
      created_at: DateTime.now,
      sent_by_user_id: session[:user_id], 
      sent_to_user_id: sent_to
    )
    
    # Response to ajax call
    true if new_message.save
  end

end
