class UsersController < ApplicationController
    

    # before_action :current_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticated, only: [:new,:create]
    # skip_before_action :verify_authenticity_token
    def show
        @tyrants = Tyrant.all
    end

    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            redirect_to user
        else
            flash[:errors] = user.errors.full_messages 
            redirect_to "/users/new"
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    # def current_user
    #     @user = User.find(session[:user_id])
    # end

    def user_params
        params.require(:user).permit(:name,:password,:password_confirmation)
    end

end