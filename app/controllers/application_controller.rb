class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :render_profile_pic
  
  def render_profile_pic (user)
    ActionController::Base.helpers.image_tag("profile_pics/" + user.profile_pic)
  end
end
