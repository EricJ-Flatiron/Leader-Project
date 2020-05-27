class TyrantsController < ApplicationController
    

    before_action :current_tyrant, only: [:show,:edit,:update]

    def show
        @rating = Rating.new
        @user = User.all
        @tyrants = Tyrant.all
        @comment = Comment.new
     end

    def index
        @tyrants = Tyrant.all
    end

    def create
    end

    def edit
        @tyrant.avatar.attach(params[:avatar])
    end

    def update
        @tyrant.update(tyrant_params)
        redirect_to @tyrant
    end

    def tyrant_params
        params.require(:tyrant).permit(:name,:bio,:economics_policy,:social_policy,
        :warmongering_policy,:avatar)
    end

    private

    def current_tyrant
        @tyrant = Tyrant.find(params[:id])
    end

end