class SecureController < ApplicationController
  before_filter :check_login
  
  def check_login
    if session[:user_id].nil?
      flash[:message] = 'Login is required to continue'
      redirect_to new_authorisation_path
    #else
      #@user = User.find(session[:user_id])
    end
  end
end