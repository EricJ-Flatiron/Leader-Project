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
    def create
        @rating = Rating.new(comment_params)
        if @rating.valid?
            @rating.save
        else
            flash[:errors] = @rating.errors.full_messages
        end
    end

    def comment_params
        params.require(:rating).permit(:appearance_rating, :economics_rating, :social_rating, :warmongering_rating, :charismia_rating, :tyrant_id, :user_id)
    end
end
