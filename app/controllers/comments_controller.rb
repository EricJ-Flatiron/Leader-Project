class CommentsController < ApplicationController

    def index
        @comments = Comment.all
    end
    def create
        @comment = Comment.new(comment_params)
        if @comment.valid?
            @comment.save
            redirect_to comments_path
        else
            flash[:errors] = @comment.errors.full_messages
            redirect_to tyrant_path(session[:tyrant_id])
        end
    end

    def comment_params
        params.require(:comment).permit(:comments, :user_id, :tyrant_id)
    end
end