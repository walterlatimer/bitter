class SessionsController < ApplicationController
  skip_before_action :redirect_unless_logged_in

  def new
  end

  def create
    user = User.authenticate(params[:username], params[:password])

    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end