class ApplicationController < ActionController::Base
    before_action :authorize
    # http_basic_authenticate_with name: "dhh", password: "secret", only: [:authenticate_admin_user_test]
    
    # def authenticate_admin_user_test
    #     authenticate_or_request_with_http_basic do |name, password|
    #     name == 'admin' && password == 'itquest123'
    #     end
    # end

    # def current_admin_user
    #     email = "admin"
    # end

    # def destroy_admin_user_session
    #     puts "admin"
    # end
    
    
    private 
        def current_user
            if !(params[:controller].start_with?('admin','active_admin'))
                @current_user ||= User.find(session[:user_id]) if session[:user_id]
            end
        end

    helper_method :current_user

        def authorize
            if !(params[:controller].start_with?('login','sessions','admin','active_admin'))
                redirect_to login_url, alert: "Not authorized" if current_user.nil?
            end
        end


        

end
