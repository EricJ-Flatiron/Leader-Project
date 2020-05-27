class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if @comment.valid?
            @comment.save
        else
            flash[:errors] = @comment.errors.full_messages
        end
    end

    def comment_params
        params.require(:comment).permit(:comments, :user_id, :tyrant_id)
    end
end