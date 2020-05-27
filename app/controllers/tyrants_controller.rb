class TyrantsController < ApplicationController
    

    before_action :current_tyrant, only: [:show]

    def show
        @rating = Rating.new
        @user = User.all
        @tyrants = Tyrant.all
        @comment = Comment.new
     end

    def index
        @tyrants = Tyrant.all
    end

    def new
        @tyrant = Tyrant.new
    end

    def create
        tyrant = Tyrant.new(tyrant_params)
        if tyrant.valid?
            tyrant.save
            redirect_to tyrant
        else
            flash[:errors] = tyrant.errors.full_messages 
            redirect_to "/tyrants/new"
        end
    end

    private

    def current_tyrant
        @tyrant = Tyrant.find(params[:id])
    end

    def tyrant_params
        params.require(:tyrant).permit(:name, :bio, :economics_policy, :warmongering_policy, :social_policy)
    end

end