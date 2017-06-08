class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  
  
  def create
   @user = User.new(params[:user])
    if @user.save
        session[:user_id] = @user.id
        redirect_to root_url, notice: "Thank you for signing up!"
        else
        render "new"
      
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:email, :password)
    end
    
  def new
    @user = User.new
  end

end
