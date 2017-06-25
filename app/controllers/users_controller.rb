class UsersController < ApplicationController
 

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  def create
    user = User.new(user_params)
    if user
      login_url @user
      flash[:success] = "Welcome to the BikeGuide!"
      redirect_to sessions_new_path
    else
      render 'new'
    end
  end
  def user_params
      email = params['email']
      crypted_password = params['password']
  end
end 
  
  #def create
   # email = params['email']
    #password = params['password']
    
    #@user = User.new
  #  @user.email = email
   # @user.crypted_password = password
    
   # if @user.save
    #  log_in @user
     # flash[:success] = "Bem-vindo ao BikeGuide!"
      #redirect_to '/perfil'
    #else
      
#      render 'new'
   
 #   end
  #end

  
#end