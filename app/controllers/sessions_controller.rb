class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end
  
  def login
  end

  def create
    @user = User.find_by email: user_params[:email]

    if @user and  @user.authenticate(user_params[:password]) 
      session[:user_id] = @user.id
      redirect_to '/index'
    else
      redirect_to '/'
    end

  end

  def destroy
    session.delete(:user_id)
    @user = nil
    redirect_to '/'
  end

  private 
  def user_params
    params.require(:user).permit(:names, :surnames, :email, :password)
  end

end
