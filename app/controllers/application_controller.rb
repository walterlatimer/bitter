class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :log
  before_action :current_user
  before_action :redirect_unless_logged_in


  private

  def redirect_unless_logged_in
    redirect_to root_path unless @current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def log
    puts "*************************"
    p session[:user_id]
    puts "*************************"
  end
end
