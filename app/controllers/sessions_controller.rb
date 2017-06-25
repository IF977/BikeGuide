class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticar(params['session']['password'])
      session[:user_id] = user.id
      redirect_to "perfil", notice: 'Logged in!'
      
    else
      render 'sessions/new'
    end
  end
  def destroy
    log_out
    redirect_to "index"
  end
end
  #def create
   # if user = User.authenticar(params['session']['email'],params['session']['password'])
        #sign_in(@user)
    #    session[:user_id] = user.id
          
     #   render "pages/perfil"
    #else
     #  p "Email ou senha inválidos"
      # render 'sessions/new'
  #  end
  #end

  #def destroy
   # session[:user_id] = nil
    #redirect_to root_url, notice: "Você saiu do BikeGuide!"

  #end
