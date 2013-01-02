class UserSessionsController < ApplicationController
  
  layout "internal"
  
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful."
      redirect_to home_path
    else
      redirect_to(new_user_session_path, :notice => "Login error. Please try again")
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to(root_path, :notice => "User Successfully Logged Out.")
  end

  def check_session
    if current_user
      redirect_to home_path
    else
      redirect_to new_user_session_path
    end
  end
  
end
