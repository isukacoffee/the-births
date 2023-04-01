class ColorPapersController < ApplicationController

  # def index
  #   @color_paper = ColorPaper.all
  # end

  def create
    @color_paper = ColorPaper.new(color_paper_params)
    if @color_paper.save
      redirect_to root_path
    else
      render :index
    end
  end

  def edit
    @color_paper = ColorPaper.find(params[:id])
    unless @birthday.user == current_user
    end
  end

  def update
  end

  private

  def color_paper_params
    params.permit(:question, :question_answer).merge(user_id: current_user.id, birthday_id: params[:birthday_id])
  end
end

