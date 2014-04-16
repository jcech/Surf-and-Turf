class CommentsController < ApplicationController

  def index
    @comments = Comment.find_by(:id => params[:listing_id])
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to listing_path(@comment.listing_id)
    else
      render :back
    end
  end

private
  def comment_params
    params.require(:comment).permit(:user_id, :listing_id, :body)
  end
end
