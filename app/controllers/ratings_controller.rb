class RatingsController < ApplicationController
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