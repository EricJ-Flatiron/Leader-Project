class RatingsController < ApplicationController

    def index
        @rating = Rating.all
    end

    def create
        
        @rating = Rating.new(rating_params)
        @rating.save
        redirect_to ratings_path
    end

    def rating_params
        params.require(:rating).permit(:appearance_rating,:economics_rating,:social_rating,
        :warmongering_rating,:charisma_rating,:user_id,:tyrant_id)
    end
   
end
