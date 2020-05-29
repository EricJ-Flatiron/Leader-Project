class RatingsController < ApplicationController

    def index
        @rating = Rating.all
    end
    def create
        @rating = Rating.new(rating_params)
        if @rating.valid?
            @rating.save
            redirect_to ratings_path
        else
            flash[:errors] = @rating.errors.full_messages
            redirect_to tyrant_path(session[:tyrant_id])
        end
    end

    def show
        @rating = Rating.find(params[:id])
    end

    
    def rating_params
        params.require(:rating).permit(:appearance_rating,:economics_rating,:social_rating,
        :warmongering_rating,:charisma_rating,:user_id,:tyrant_id)
    end
   
end
    
