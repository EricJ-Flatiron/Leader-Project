class UsersController < ApplicationController

    before_action :current_user, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def current_user
        @user = User.find(params[:id])
    end

end