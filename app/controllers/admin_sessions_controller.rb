class AdminSessionsController < ApplicationController
  
  layout 'internal'
  
  def new
    @admin_session = AdminSession.new
  end
  
  def create
    @admin_session = AdminSession.new(params[:admin_session])
    if @admin_session.save
      flash[:notice] = 'Admin Login Successfull.'
      redirect_to admin_dashboard_path
    else
      flash[:notice] = "Invalid login, please try again"
      redirect_to :action => "new"
    end
  end
  
  def destroy
    @admin_session = AdminSession.find(current_admin)
    @admin_session.destroy
    flash[:notice] = 'Admin Successfully Logged Out.'
    redirect_to :action => "new"
  end
  
  def check_session
    if current_admin
      redirect_to home_path
    else
      redirect_to new_admin_session_path
    end
  end
  
end
