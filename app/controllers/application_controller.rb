class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :load_profile_pic
  
  def load_profile_pic (user_id)
    ("profile_pics/" + user_id.profile_pic)
  end
end
