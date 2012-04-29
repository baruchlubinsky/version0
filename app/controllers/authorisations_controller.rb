class AuthorisationsController < ApplicationController
  # Show the login form
  def new
    render :layout => 'layouts/empty'
  end
  # Sign in
  def create
    query = User.where(:email => params[:email], :password => User.hash_password(params[:password]))
    if query.count == 0
      flash[:message] = 'Unable to sign in'
      redirect_to new_authorisation_path
    else
      @user = query.first
      session[:user_id] = @user.id;
      redirect_to user_path(@user)    
    end 
  end
  # Sign out
  def destroy    
    session[:user_id] = nil;
    redirect_to new_authorisation_path
  end
end