class CommentsController < ApplicationController

  def index
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:sentence).merge(user_id: current_user.id)
  end
end
