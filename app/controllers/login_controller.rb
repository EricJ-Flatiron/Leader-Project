class LoginController < ApplicationController
    skip_before_action :authenticated, only: [:new,:create]

    def new
    end

    def create
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect_to "/profile"
        else
            flash[:error] = "Wrong Username or Password"
            redirect_to "/login"
        end
    end

    def destroy
        session[:user_id] = nil
    
        redirect_to "/login"
      end
end
