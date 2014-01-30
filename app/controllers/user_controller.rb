class UserController < ApplicationController
  def index
    @users = User.all
  end
  def logged_in_user_id
    session[:logged_in_user_id]= params[:id]
  end
end
