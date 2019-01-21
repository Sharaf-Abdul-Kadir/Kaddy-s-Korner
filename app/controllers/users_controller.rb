class UsersController < ApplicationController

  def new
    @user = User.new
  end
    
  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to menu_list_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

end
