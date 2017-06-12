class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
        sign_in(@user)
        session[:user_id] = users.id
        
          
        
    else
        flash.now.alert = "Email ou senha inválidos"
    render "pages/perfil"
    end
  end

  def destroy
    sign_out
    session[:user_id] = nil
    redirect_to root_url, notice: "Você saiu do BikeGuide!"

  end
end