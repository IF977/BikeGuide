class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
        session[:user_id] = users.id
        #redirect_to root_url, notice: "Logged in!"
        redirect_to 'pages/perfil'
        else
        flash.now.alert = "Email or password is invalid"
        render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"

  end
end