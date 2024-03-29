class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find_by_email(params[:email])
    
    if @user && @user.authenticate(params[:password])
      sign_in(@user)
      
      flash[:success] = "Welcome back #{@user.name}"
      redirect_to root_path
    else
      flash[:error] = "Invalid email address and/or password"
      render :new
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
end
