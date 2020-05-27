class TyrantsController < ApplicationController
    

    before_action :current_tyrant, only: [:show]

    def show
        @rating = Rating.new
        @user = User.all
        @tyrants = Tyrant.all
        
    
        
    end

    def index
        @tyrants = Tyrant.all
    end

    def create
    end

    private

    def current_tyrant
        @tyrant = Tyrant.find(params[:id])
    end

end