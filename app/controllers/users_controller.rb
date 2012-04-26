class UsersController < ApplicationController
  def new
    @user = User.new
    render :layout => 'layouts/empty'
  end
  def create
    @user = User.new(params[:user])
    puts :params['user']
    puts @user
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:message] = 'Unable to create user'
      redirect_to new_user_path
    end
  end
  def show
    @user = User.find(session[:user_id])
    render :layout => 'layouts/empty' 
  end
end