class SessionsController < ApplicationController

  def new
  end
    
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # flash[:notice] = 'Successfully logged in'
      redirect_to menu_list_path
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end
    
    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end
    
end
