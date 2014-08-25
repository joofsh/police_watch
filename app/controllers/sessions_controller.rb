class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email]).authenticate(params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Welcome #{user.name}!"
    else
      flash.now.alert = "Invalid login attempt"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Successfully logged out!"
  end
end
