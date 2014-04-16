class CommentsController < ApplicationController

  def index
    @comments = Comment.find_by(:id => params[:listing_id])
  end

  def create
    sleep 1
    @comment = Comment.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to listing_path(@comment.listing_id) }
        format.js
      end
    else
      render :back
    end
  end


private
  def comment_params
    params.require(:comment).permit(:user_id, :listing_id, :body)
  end
end
