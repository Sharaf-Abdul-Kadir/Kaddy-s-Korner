class LoginController < ApplicationController

    def registration
        @user = User.new
    end

    def new_signup
        @user = User.new(allowed_params)
        
        if(@user.save)
            puts @user.inspect
            redirect_to login_path
        else(@user.errors.any?)
            redirect_to registration_path
        end
        
    end
    
    private def allowed_params
         params.require(:user).permit(User.attribute_names + [:password, :password_confirmation])
    end

end
