class SessionsController < ApplicationController
  def new
  end
  
  def create
    users = Users.find_by_email(params[:email])
    if users && users.authenticate(params[:password])
        session[:users_id] = users.id
        redirect_to root_url, notice: "Logged in!"
        else
        flash.now.alert = "Email or password is invalid"
        render "new"
    end
  end

  def destroy
    session[:users_id] = nil
    redirect_to root_url, notice: "Logged out!"

  end
end