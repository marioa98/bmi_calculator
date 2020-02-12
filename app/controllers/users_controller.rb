class UsersController < ApplicationController
  def login
  end

  def signin
    @user = User.new
  end

  def showcase
  end

  def create

    @user = User.new(user_params)
    @user.email.downcase!

    if @user.save
      redirect_to '/index'
    else
      render 'signin'
    end
  end

  def confirm
  
    @user = User.find_by("email = '#{user_params[:email]}'")

    if @user.authenticate(user_params[:password]) 
      redirect_to index_path
    else
      redirect_to '/'
    end
  end

  def calculate
    height = bmi_params[:height].to_f
    weight = bmi_params[:weight].to_f
    @message = ""

    if height == 0 || weight == 0
      @message = "Please insert valid numbers"
    else
      bmi = (weight / height ** 2).round(1)
      category = BmiTable.where("bmi_from <= #{bmi}").order(created_at: :desc).first
      @message = "You have a BMI of #{bmi}. Category: #{category[:category]}" 
    end

    render 'showcase' 
  end

  private 
  def user_params
    params.require(:user).permit(:names, :surnames, :email, :password)
  end

  def bmi_params
    params.require(:bmi).permit(:height, :weight)
  end
end
