class ApplicationController < ActionController::Base
  include SessionsHelper
# protect_from_forgery with: :exception
#  private
 # def current_user
  #  User.where(id: session[:user_id]).first
  #end
  #helper_method :current_user
end