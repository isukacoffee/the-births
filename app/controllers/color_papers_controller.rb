class ColorPapersController < ApplicationController

  # def index
  #   @color_paper = Color_paper.all
  # end

  def create
    @color_paper = Color_paper.new
  end

  def edit
    @color_paper = Color_paper.find(params[:id])
    unless @birthday.user == current_user
  end

  def update
  end

  private

  def color_paper_params
    params.require(:color_paper).permit(:question, :question_answer, :image).merge(user_id :current_user.id :birthday_id)
  end
end
