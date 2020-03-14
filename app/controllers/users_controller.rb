class UsersController < ApplicationController

  def new
    @user = User.new
  end
    
  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to menu_list_path
    else
      render "new"
    end
  end
   
  def new_user
    @users = User.all
end

end
