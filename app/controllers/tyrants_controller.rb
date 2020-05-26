class TyrantsController < ApplicationController
    

    before_action :current_tyrant, only: [:show]

    def show
    end

    def index
        @tyrants = Tyrant.all
    end

    private

    def current_tyrant
        @tyrant = Tyrant.find(params[:id])
    end

end